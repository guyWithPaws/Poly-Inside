import 'dart:async';

import 'package:common/common.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:parser/parser/src/parser_services.dart';
import 'package:parser/parser/src/progress_bar.dart';
import 'package:shared/shared.dart';

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

    var progressBar = ProgressBar(totalLength: facultiesCount);

    for (var i = 0; i < facultiesCount; i++) {
      progressBar.update(i + 1);

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

  Future<String> findMisteryProfessor(String misteryProfessor,
      List<Map<String, String>> professorsIdsAndNames) async {
    var professorsNames = professorsIdsAndNames.map((data) => data['name']!);
    for (final partOfMisteryProfessor in misteryProfessor.split(' ')) {
      if (professorsNames.contains(partOfMisteryProfessor)) {
        var id = professorsIdsAndNames.firstWhere(
            (data) => data['name']! == partOfMisteryProfessor)['id'];
        return id!;
      }
    }
    return 'Not found';
  }

  Future<List<String>> matchNameWithId(List<String> professors) async {
    var professorsId = <String>{};
    databaseService.professorsData = await provider.getOnceAllProfessors();
    var professorsIdsAndNames =
        await databaseService.getProfessorsIdsAndNames();

    for (final professor in professors) {
      var professorsNames = professorsIdsAndNames.map((data) => data['name']);
      if (professorsNames.contains(professor)) {
        var id = professorsIdsAndNames
            .firstWhere((data) => data['name']! == professor)['id'];
        professorsId.add(id!);
      } else {
        var result =
            await findMisteryProfessor(professor, professorsIdsAndNames);
        if (result != 'Not found') {
          professorsId.add(result);
        } else {
          await addProfessorIfHeNotExists(professor);
          databaseService.professorsData =
              await provider.getOnceAllProfessors();
          professorsIdsAndNames =
              await databaseService.getProfessorsIdsAndNames();
        }
      }
    }
    return professorsId.toList();
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
