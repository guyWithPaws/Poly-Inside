// ignore_for_file: cascade_invocations

import 'dart:async';

import 'package:common/common.dart';
import 'package:http/http.dart' as http;
import 'package:l/l.dart';
import 'package:parser/parser/src/groups_parser.dart';
import 'package:parser/parser/src/parser_services.dart';
import 'package:parser/parser/src/professors_parser.dart';
import 'package:parser/parser/src/progress_bar.dart';

class Parser {
  final String staffPage =
      'https://www.spbstu.ru/university/about-the-university/staff/';
  final String mainSchedulePage = 'https://ruz.spbstu.ru';
  final int multiplier = 20;

  late final DatabaseProviderImpl provider;
  late final HttpClientService httpClientService;
  late final ImageService imageService;
  late final DatabaseService databaseService;
  late final CryptoService cryptoService;
  late final ProfessorsParser professorsParser;
  late final ClickerService clickerService;
  late final GroupsParser groupsParser;

  Parser._({
    required this.provider,
    required this.httpClientService,
    required this.imageService,
    required this.databaseService,
    required this.cryptoService,
    required this.professorsParser,
    required this.clickerService,
    required this.groupsParser,
  });

  static Future<Parser> create(DatabaseProviderImpl provider) async {
    final httpClientService = HttpClientService();
    final imageService = ImageService(httpClientService: httpClientService);
    final databaseService = await DatabaseService.create(provider);
    final cryptoService = CryptoService();
    final clickerService = ClickerService();
    final professorsParser = ProfessorsParser(
        httpClientService: httpClientService,
        imageService: imageService,
        databaseService: databaseService,
        cryptoService: cryptoService,
        provider: provider);
    final groupsParser = GroupsParser(
        httpClientService: httpClientService,
        imageService: imageService,
        databaseService: databaseService,
        cryptoService: cryptoService,
        provider: provider,
        clickerService: clickerService);
    
    l.i('[Parser]: Parser was created!');

    return Parser._(
      provider: provider,
      httpClientService: httpClientService,
      imageService: imageService,
      databaseService: databaseService,
      cryptoService: cryptoService,
      professorsParser: professorsParser,
      clickerService: clickerService,
      groupsParser: groupsParser,
    );
  }

  Future<void> updateDatabase() async {
    print('adhjadgjak');
    var startTime = DateTime.now();
    l.i('[Parser]: Parser starts! Start time: $startTime');

    late http.Response response;
    try {
      response = await httpClientService.get(Uri.parse(staffPage));
      // ignore: lines_longer_than_80_chars
      l.i('[Parser]: The staff page was successfully parsed. Transition to the next stage');
    } on Object catch (e) {
      l.e('[Parser]: Something went wrong during parsing staff page. \n$e');
    }

    l.i('[Parser]: Downloading professors links!');
    var professorsLinks = professorsParser.getProfessorsLinks(response);

    var counter = 0;
    var totalProfessorsNumber = multiplier * professorsLinks.length;
    l.i('[Parser]: Total professors count: $totalProfessorsNumber');

    var progressBar =
        ProgressBar(totalLength: totalProfessorsNumber, multiplier: multiplier);

    var maxAsyncRequests = 20;
    var tasks = <Future<void>>[];
    for (final link in professorsLinks) {
      counter++;

      progressBar.update(counter);

      tasks.add(professorsParser.parseProfessorPage(link));

      if (tasks.length >= maxAsyncRequests) {
        await Future.wait(tasks);
        tasks.clear();
      }
    }

    await Future.wait(tasks);

    try {
      response = await httpClientService.get(Uri.parse(mainSchedulePage));
      // ignore: lines_longer_than_80_chars
      l.i('[Parser]: The main schedule page was successfully parsed. Transition to the next stage');
    } on Object catch (e) {
      // ignore: lines_longer_than_80_chars
      l.e('[Parser]: Something went wrong during parsing main schedule page. \n$e');
    }

    l.i('[Parser]: Getting faculties links!');
    var facultiesLinks = groupsParser.getFacultiesLinks(response);
    l.i('[Parser]: Total faculties count: ${facultiesLinks.length}');

    l.i('[Parser]: Getting groups links!');
    var groupsLinks = await clickerService.getAllGroupsLinks(facultiesLinks);
    var totalNumberOfGroupLinks = groupsLinks.length;

    l.i('[Parser]: Total groups count: $totalNumberOfGroupLinks');
    progressBar = ProgressBar(totalLength: totalNumberOfGroupLinks);

    maxAsyncRequests = 20;
    counter = 0;
    tasks.clear();
    for (final groupLink in groupsLinks) {
      counter++;

      progressBar.update(counter);

      tasks.add(groupsParser.parseGroupSchedulePage(
          groupLink.link, groupLink.number));

      if (tasks.length >= maxAsyncRequests) {
        await Future.wait(tasks);
        tasks.clear();
      }
    }

    await Future.wait(tasks);

    var endTime = DateTime.now();
    l
      ..i('[Parser]: Parsing has been completed! End time: $endTime')
      ..i('[Parser]: Total time: ${endTime.difference(startTime)}')
      ..i('[Parser]: Database was updated!');
  }
}
