import 'dart:async';
import 'dart:typed_data';

import 'package:common/common.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;
import 'package:l/l.dart';
import 'package:parser/parser/src/parser_services.dart';
import 'package:parser/parser/src/progress_bar.dart';
import 'package:shared/shared.dart';

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

    var progressBar = ProgressBar(totalLength: lastPage - 1);

    var linksToProfessors = <String>[];
    for (var i = 1; i <= lastPage; i++) {
      progressBar.update(i - 1);
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
            .text
            .trimLeft()
            .trimRight()
            .toLowerCase();

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
