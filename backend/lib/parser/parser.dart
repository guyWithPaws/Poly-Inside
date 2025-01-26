import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:l/l.dart';
import 'package:poly_inside_server/database/database.dart';
import 'package:poly_inside_server/database/provider_impl.dart';
import 'package:poly_inside_server/parser/parser_services.dart';
import 'package:poly_inside_server/parser/progress_bar.dart';
import 'package:shared/shared.dart';

Future<void> main() async {
  final database = AppDatabase(NativeDatabase(File('db.sqlite')));
  final provider = DatabaseProviderImpl(database: database);
  final parser = await Parser.create(provider);
  await parser.updateDatabase();
}

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

    var progressBarProf =
        ProgressBar(totalLength: totalProfessorsNumber, multiplier: multiplier);

    var maxAsyncRequests = 20;
    var tasks = <Future<void>>[];
    for (final link in professorsLinks) {
      counter++;

      progressBarProf.update(counter);

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

    l.i('[Parser]: Downloading groups links!');
    var facultiesLinks = groupsParser.getFacultiesLinks(response);

    var groupsLinks = await clickerService.getAllGroupsLinks(facultiesLinks);
    var totalNumberOfGroupLinks = groupsLinks.length;

    l.i('[Parser]: Total groups count: $totalNumberOfGroupLinks');
    var progressBar = ProgressBar(totalLength: totalNumberOfGroupLinks);

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

class ProfessorsParser {
  final HttpClientService httpClientService;
  final ImageService imageService;
  final DatabaseService databaseService;
  final CryptoService cryptoService;
  final DatabaseProviderImpl provider;

  ProfessorsParser({
    required this.httpClientService,
    required this.imageService,
    required this.databaseService,
    required this.cryptoService,
    required this.provider,
  });

  List<String> getProfessorsLinks(http.Response response) {
    final htmlDocument = parse(response.body);
    final htmlElements = htmlDocument.getElementsByClassName('pagination');
    final lastPage = int.parse(
        htmlElements[0].children[htmlElements[0].children.length - 2].text);

    var linksToProfessors = <String>[];
    for (var i = 1; i <= lastPage; i++) {
      linksToProfessors.add(
          'https://www.spbstu.ru/university/about-the-university/staff/?arrFilter_ff%5BNAME%5D=&arrFilter_pf%5BPOSITION%5D=&arrFilter_pf%5BSCIENCE_TITLE%5D=&arrFilter_pf%5BSECTION_ID_1%5D=849&arrFilter_pf%5BSECTION_ID_2%5D=&arrFilter_pf%5BSECTION_ID_3%5D=&del_filter=%D0%A1%D0%B1%D1%80%D0%BE%D1%81%D0%B8%D1%82%D1%8C&PAGEN_1=$i&SIZEN_1=20');
    }

    return linksToProfessors;
  }

  Future<void> parseProfessorPage(String professorUrl) async {
    late final http.Response response;
    try {
      response = await httpClientService.get(Uri.parse(professorUrl));
    } on Object catch (e) {
      l
        // ignore: lines_longer_than_80_chars
        ..e('[Parser]: Something went wrong during parsing professor page. \n$e')
        ..e('[Parser]: Link: $professorUrl');
    }

    try {
      var professorPage = parse(response.body);
      var length =
          professorPage.getElementsByClassName('col-sm-9 col-md-10').length;
      for (var number = 0; number < length; number++) {
        var professorName = professorPage
            .getElementsByClassName('col-sm-9 col-md-10')[number]
            .children[0]
            .text;

        if (databaseService.professorsNames.contains(professorName)) continue;

        var uniqueProfessorPattern = professorPage
            .getElementsByClassName('person-card')[number]
            .attributes['id'];

        var avatarSubLink = professorPage
            .getElementsByClassName('col-sm-3 col-md-2')[number]
            .children[0]
            .attributes['src'];

        var avatars = <String, Uint8List?>{'avatar': null, 'smallAvatar': null};

        if (avatarSubLink != null &&
            !avatarSubLink.contains('no-photo-user-available')) {
          var professorAvatar = 'https://www.spbstu.ru/$avatarSubLink';
          avatars = await imageService.getAvatar(professorAvatar);
        }

        var professor = Professor(
          id: cryptoService.generateUniqueId(
              professorName, uniqueProfessorPattern!),
          name: professorName.toLowerCase(),
          avatar: avatars['avatar']?.toList(),
          smallAvatar: avatars['smallAvatar']?.toList(),
          professionalism: 0,
          loyalty: 0,
          objectivity: 0,
          harshness: 0,
          reviewsCount: 0,
          rating: 0,
        );

        await databaseService.addProfessor(professor, provider);
      }
    } on Object catch (e) {
      l
        ..e('[Parser]: Error during extracting data from professor page: $e')
        ..e('[Parser]: Link: $professorUrl');
    }
  }
}

class GroupsParser {
  final HttpClientService httpClientService;
  final ImageService imageService;
  final DatabaseService databaseService;
  final CryptoService cryptoService;
  final DatabaseProviderImpl provider;
  final ClickerService clickerService;

  GroupsParser({
    required this.httpClientService,
    required this.imageService,
    required this.databaseService,
    required this.cryptoService,
    required this.provider,
    required this.clickerService,
  });

  List<String> getFacultiesLinks(http.Response response) {
    final facultiesHtmlDocument = parse(response.body);

    var facultiesElements =
        facultiesHtmlDocument.getElementsByClassName('faculty-list__link');
    var facultiesCount = facultiesElements.length;
    var facultiesLinks = List.filled(facultiesCount, ' ');

    for (var i = 0; i < facultiesCount; i++) {
      var sublink = facultiesElements[i].attributes['href']!;
      facultiesLinks[i] = 'https://ruz.spbstu.ru$sublink';
    }
    return facultiesLinks;
  }

  Future<List<String>> getScheduleLinksForUpcomingWeeks(
      int numberOfUpcomingWeeks) async {
    var todaysDate = DateTime.now();

    var scheduleLinksForUpcomingWeeks = <String>[];
    for (var i = 0; i < numberOfUpcomingWeeks; ++i) {
      var nextWeekDate = todaysDate.add(Duration(days: 7 * i));
      scheduleLinksForUpcomingWeeks.add(
        DateFormat('yyyy-M-d').format(nextWeekDate),
      );
    }
    return scheduleLinksForUpcomingWeeks;
  }

  Future<List<String>> findProfessors(String url) async {
    final response = await httpClientService.get(Uri.parse(url));
    var weekScheduleHtmlDocument = parse(response.body);
    var weekProfessors =
        weekScheduleHtmlDocument.getElementsByClassName('lesson__teachers');

    var professors = List.filled(weekProfessors.length, '');

    for (var i = 0; i < weekProfessors.length; ++i) {
      professors[i] = normalizeProfessorNames(weekProfessors[i].text);
    }

    return professors;
  }

  String normalizeProfessorNames(String professorName) =>
      professorName.trimLeft().trimRight().toLowerCase();

  Future<List<String>> fetchAllProfessors(
      String url, int numberOfUpcomingWeeks) async {
    var scheduleLinksForUpcomingWeeks =
        (await getScheduleLinksForUpcomingWeeks(numberOfUpcomingWeeks))
            .map((link) => '$url?date=$link')
            .toList();

    var professors = <String>[];
    for (final link in scheduleLinksForUpcomingWeeks) {
      var partOfFoundedProfessors = await findProfessors(link);
      professors.addAll(partOfFoundedProfessors);
    }
    return professors.toSet().toList();
  }

  Future<List<String>> matchNameWithId(List<String> professors) async {
    var professorsId = <String>[];
    var professorsIdsAndNames =
        await databaseService.getProfessorsIdsAndNames();

    for (final professor in professors) {
      try {
        var id = professorsIdsAndNames
            .firstWhere((data) => data['name']! == professor)['id'];
        professorsId.add(id!);
      } on Object {
        await addProfessorIfHeNotExists(professor);
        professorsIdsAndNames =
            await databaseService.updateProfessorsIdsAndNames();

        // ignore: lines_longer_than_80_chars
        // l.e('[Parser]: Error! Professor exists, but he is not on the staff page!');
        continue;
      }
    }
    return professorsId;
  }

  Future<void> addProfessorIfHeNotExists(String professorName) async {
    var professor = Professor(
      id: cryptoService.generateUniqueId(
          professorName, DateTime.now().toString()),
      name: professorName,
      avatar: null,
      smallAvatar: null,
      professionalism: 0,
      loyalty: 0,
      objectivity: 0,
      harshness: 0,
      reviewsCount: 0,
      rating: 0,
    );

    await databaseService.addProfessor(professor, provider);
  }

  Future<void> parseGroupSchedulePage(String groupLink, String number) async {
    var professors = await fetchAllProfessors(groupLink, 4);
    var professorsIds = await matchNameWithId(professors);

    for (final professorId in professorsIds) {
      var id = cryptoService.generateUniqueId(
          professorId, DateTime.now().toString());
      await databaseService.addProfessorToGroup(id, number, professorId);
    }
  }
}
