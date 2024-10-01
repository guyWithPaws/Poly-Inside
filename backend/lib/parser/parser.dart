import 'dart:convert';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:image/image.dart' as img;
import 'package:l/l.dart';
import 'package:poly_inside_server/database/provider.dart';
import 'package:shared/shared.dart';

class Parser {
  final String staffPage = 'https://www.spbstu.ru/university/about-the-university/staff/';

  final DatabaseProvider provider;
  static const int maxRetries = 3;

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

      if (!checkIsGoodResponce(response)) {
        continue;
      }

      try {
        var professorPage = parse(response.body);
        var numberOfProfessor = professorPage.getElementsByClassName('col-sm-9 col-md-10').length;

        for (var number = 0; number < numberOfProfessor; number++) {
          var professorName = professorPage.getElementsByClassName('col-sm-9 col-md-10')[number].children[0].text;

          if (professorsNames.contains(professorName) || professorsNames.isEmpty) {
            var avatarSublink = professorPage
                .getElementsByClassName('col-sm-3 col-md-2')[number]
                .children[0]
                .attributes['src']
                .toString();

            var professorAvatar = 'https://www.spbstu.ru/$avatarSublink';

            Uint8List? image;
            Uint8List? compressedImage;

            if (!avatarSublink.contains('no-photo-user-available')) {
              var data = await http.get(Uri.parse(professorAvatar));
              image = data.bodyBytes;

              var decodeImage = img.decodeImage(image);

              compressedImage = Uint8List.fromList(img.encodeJpg(decodeImage!, quality: 60));
            }

            var professorIdBytes = utf8.encode(professorName + DateTime.now().toString());

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
                avatar: compressedImage?.toList(),
              ),
            );
          }
        }
      } on Object catch (e) {
        l.i('[Parser]: Error during parsing $e');
      }
    }

    l.i('[Parser]: Database was updated');
  }
}
