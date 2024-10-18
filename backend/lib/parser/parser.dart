import 'dart:convert';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:image/image.dart' as img;
import 'package:l/l.dart';
import 'package:poly_inside_server/database/provider_impl.dart';
import 'package:shared/shared.dart';

class Parser {
  final String staffPage =
      'https://www.spbstu.ru/university/about-the-university/staff/';

  final DatabaseProviderImpl provider;
  static const int maxRetries = 3;
  static const int avatarQuality = 60;
  static const int smallAvatarQuality = 20;

  Parser({required this.provider}) {
    l.i('[Parser]: Parser initialization was successful.');
  }

  bool checkIsGoodResponce(Response response) {
    if (response.statusCode == 200) {
      return true;
    } else {
      l
        ..w('[Parser]: Bad responce with status code ${response.statusCode}.')
        ..i('[parser]: Skip professor.');
      return false;
    }
  }

  Future<List<String>> getListOfProfessorsNames() async {
    var listOfProfessorsNames = <String>[];
    var listOfProfessors = await provider.getOnceAllProfessors();
    for (final professor in listOfProfessors) {
      listOfProfessorsNames.add(professor.name);
    }
    return listOfProfessorsNames;
  }

  int getNumberOfProfessors(Document professorPage) =>
      professorPage.getElementsByClassName('col-sm-9 col-md-10').length;

  String getProfessorName(Document professorPage, int number) => professorPage
      .getElementsByClassName('col-sm-9 col-md-10')[number]
      .children[0]
      .text;

  String getAvatarSubLink(Document professorPage, int number) => professorPage
      .getElementsByClassName('col-sm-3 col-md-2')[number]
      .children[0]
      .attributes['src']
      .toString();

  Future<void> fillDatabase() async {
    final responce = await http.Client().get(Uri.parse(staffPage));

    if (!checkIsGoodResponce(responce)) {
      // ignore: lines_longer_than_80_chars
      l.w('[Parser]: Polytechnic servers are temporarily unavailable. Database updates have been suspended.');
      return;
    }

    l.i('[Parser]: Everything is OK. Start parsing...');

    final htmlDocument = parse(responce.body);
    final htmlElements = htmlDocument.getElementsByClassName('pagination');

    final length = htmlElements[0].children.length;
    final lastPage = int.parse(htmlElements[0].children[length - 2].text);

    var linksToProfessors = <String>[];
    for (var i = 1; i <= lastPage; i++) {
      l.i('[Parser]: Page $i added.');
      linksToProfessors.add(
          'https://www.spbstu.ru/university/about-the-university/staff/?arrFilter_ff%5BNAME%5D=&arrFilter_pf%5BPOSITION%5D=&arrFilter_pf%5BSCIENCE_TITLE%5D=&arrFilter_pf%5BSECTION_ID_1%5D=849&arrFilter_pf%5BSECTION_ID_2%5D=&arrFilter_pf%5BSECTION_ID_3%5D=&del_filter=%D0%A1%D0%B1%D1%80%D0%BE%D1%81%D0%B8%D1%82%D1%8C&PAGEN_1=$i&SIZEN_1=20');
    }

    var professorsNames = await getListOfProfessorsNames();

    for (final link in linksToProfessors) {
      l.i('[Parser]: Link to $link');
      final response = await http.Client().get(Uri.parse(link));

      if (!checkIsGoodResponce(response)) continue;

      try {
        var professorPage = parse(response.body);

        for (var number = 0;
            number < getNumberOfProfessors(professorPage);
            number++) {
          var professorName = getProfessorName(professorPage, number);

          if (professorsNames.contains(professorName) ||
              professorsNames.isEmpty) {
            var avatarSublink = getAvatarSubLink(professorPage, number);

            var professorAvatar = 'https://www.spbstu.ru/$avatarSublink';

            Uint8List? image;
            Uint8List? compressedAvatar;
            Uint8List? compressedSmallAvatar;

            if (!avatarSublink.contains('no-photo-user-available')) {
              var data = await http.get(Uri.parse(professorAvatar));
              image = data.bodyBytes;

              var decodeImage = img.decodeImage(image);

              compressedAvatar = Uint8List.fromList(
                  img.encodeJpg(decodeImage!, quality: avatarQuality));
              compressedSmallAvatar = Uint8List.fromList(
                  img.encodeJpg(decodeImage, quality: smallAvatarQuality));
            }

            var professorIdBytes =
                utf8.encode(professorName + DateTime.now().toString());

            var professorId = sha1.convert(professorIdBytes).toString();

            await provider.addProfessor(
              Professor(
                  professionalism: 0,
                  loyalty: 0,
                  objectivity: 0,
                  harshness: 0,
                  reviewsCount: 0,
                  rating: 0,
                  id: professorId,
                  name: professorName.toLowerCase(),
                  avatar: compressedAvatar?.toList(),
                  smallAvatar: compressedSmallAvatar?.toList()),
            );
          }
        }
      } on Object catch (e) {
        l.i('[Parser]: Error during parsing $e');
      }
    }
    l.i('[Parser]: Database was updated with all proffesors');
  }

//                                PROFFESORS
//                                    BY
//                                  GROUPS
//                                  PARSER
  static const int scheduleWeeks = 2;

  List<String> getFacultiesLinks(Document facultiesHtmlDocument) {
    var facultiesElements =
        facultiesHtmlDocument.getElementsByClassName('faculty-list__link');
    var facultiesCount = facultiesElements.length;
    var facultiesLinks = List.filled(facultiesCount, ' ');

    for (var i = 0; i < facultiesCount; i++) {
      facultiesLinks[i] =
          'https://ruz.spbstu.ru${facultiesElements[i].attributes['href']!}';
    }
    return facultiesLinks;
  }

  List<String> getFacultieGroups(Document facultieGroupsHtmlDocument) {
    var groups =
        facultieGroupsHtmlDocument.getElementsByClassName('groups-list__link');
    var groupsCount = groups.length;
    var groupsNumbers = List.filled(groupsCount, ' ');
    for (var j = 0; j < groupsCount; j++) {
      groupsNumbers[j] = groups[j].text;
    }
    return groupsNumbers;
  }

  List<String> getFacultieGroupsLinks(Document facultieGroupsHtmlDocument) {
    var groups =
        facultieGroupsHtmlDocument.getElementsByClassName('groups-list__link');
    var groupsCount = groups.length;
    var groupsLinks = List.filled(groupsCount, ' ');
    for (var j = 0; j < groupsCount; j++) {
      groupsLinks[j] = 'https://ruz.spbstu.ru${groups[j].attributes['href']!}';
    }
    return groupsLinks;
  }

  Future<List<String>> getGroupsProfessors(
      Document weekScheduleHtmlDocument, List<String> groupProfessors) async {
    var weekProfessors =
        weekScheduleHtmlDocument.getElementsByClassName('lesson__teachers');
    for (var i = 0; i < weekProfessors.length; i++) {
      final professor = await provider.findProfessorByName(
        weekProfessors[i].text.toLowerCase().substring(1),
        1,
      );
      if (professor.isEmpty) continue;
      final professorsId = professor[0].id;
      if (!groupProfessors.contains(professorsId)) {
        groupProfessors.add(professorsId);
      }
      print(professorsId);
    }
    return groupProfessors;
  }

  Future<void> fillGroupsDatabase() async {
    const schedulePage = 'https://ruz.spbstu.ru/';

    final scheduleResponce = await http.Client().get(Uri.parse(schedulePage));

    if (!checkIsGoodResponce(scheduleResponce)) {
      // ignore: lines_longer_than_80_chars
      l.w('[Parser]: Polytechnic servers are temporarily unavailable. Database updates have been suspended.');
      return;
    }

    l.i('[Parser]: Everything is OK. Start parsing faculties links...');

    final facultiesHtmlDocument = parse(scheduleResponce.body);
    var facultieLinks = getFacultiesLinks(facultiesHtmlDocument);

// Groups by facultie
    for (var k = 0; k < facultieLinks.length; k++) {
      final facultieGroupsResponce =
          await http.Client().get(Uri.parse(facultieLinks[k]));

      if (!checkIsGoodResponce(facultieGroupsResponce)) {
        // ignore: lines_longer_than_80_chars
        l.w('[Parser]: Polytechnic servers are temporarily unavailable. Database updates have been suspended.');
        return;
      }

      l.i('[Parser]: Everything is OK. Start parsing next facultie...');

      final facultieGroupsHtmlDocument = parse(facultieGroupsResponce.body);

      var groupsLinks = getFacultieGroupsLinks(facultieGroupsHtmlDocument);
      var groupsNumbers = getFacultieGroups(facultieGroupsHtmlDocument);

      for (var z = 0; z < groupsNumbers.length; z++) {
        var groupScheduleWeekLinks = <String>[
          '${groupsLinks[z]}?date=2024-11-4',
          '${groupsLinks[z]}?date=2024-11-11'
        ];
        var groupProfessorsId = <String>[];
        for (var x = 0; x < scheduleWeeks; x++) {
          final weekScheduleResponce =
              await http.Client().get(Uri.parse(groupScheduleWeekLinks[x]));
          final weekScheduleHtmlDocument = parse(weekScheduleResponce.body);
          groupProfessorsId = await getGroupsProfessors(
              weekScheduleHtmlDocument, groupProfessorsId);
        }
        for (var i = 0; i < groupProfessorsId.length; i++) {
          var idBytes =
              utf8.encode(groupProfessorsId[i] + DateTime.now().toString());

          var id = sha1.convert(idBytes).toString();
          await provider.addProfessorToGroup(
              id, groupsNumbers[z], groupProfessorsId[i]);
        }
      }
    }
  }
}
