import 'dart:convert';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:l/l.dart';
import 'package:sqlite3/sqlite3.dart';

class Parser {
  final String staffPage =
      'https://www.spbstu.ru/university/about-the-university/staff/';
  final String databaseFile = '';

  Parser() {
    final database = sqlite3.open(databaseFile);
  }

  bool checkIsGoodResponce(Response response) {
    if (response.statusCode == 200) {
      return true;
    } else {
      l.w('Parser: Bad responce with status code ${response.statusCode}');
      return false;
    }
  }

  Future<void> fillDatabase() async {
    final responce = await http.Client().get(Uri.parse(staffPage));

    if (checkIsGoodResponce(responce)) {
      final htmlDocument = parse(responce.body);
      final htmlElements = htmlDocument.getElementsByClassName('pagination');

      final length = htmlElements[0].children.length;
      final lastPage = htmlElements[0].children[length - 2].text as int;

      var linksToProfessors = <String>[];
      for (var i = 1; i <= lastPage; i++) {
        l.i('Parser: Link to $i professor added. Link: https://www.spbstu.ru/university/about-the-university/staff/?arrFilter_ff%5BNAME%5D=&arrFilter_pf%5BPOSITION%5D=&arrFilter_pf%5BSCIENCE_TITLE%5D=&arrFilter_pf%5BSECTION_ID_1%5D=849&arrFilter_pf%5BSECTION_ID_2%5D=&arrFilter_pf%5BSECTION_ID_3%5D=&del_filter=%D0%A1%D0%B1%D1%80%D0%BE%D1%81%D0%B8%D1%82%D1%8C&PAGEN_1=$i&SIZEN_1=20');
        linksToProfessors.add(
            'https://www.spbstu.ru/university/about-the-university/staff/?arrFilter_ff%5BNAME%5D=&arrFilter_pf%5BPOSITION%5D=&arrFilter_pf%5BSCIENCE_TITLE%5D=&arrFilter_pf%5BSECTION_ID_1%5D=849&arrFilter_pf%5BSECTION_ID_2%5D=&arrFilter_pf%5BSECTION_ID_3%5D=&del_filter=%D0%A1%D0%B1%D1%80%D0%BE%D1%81%D0%B8%D1%82%D1%8C&PAGEN_1=$i&SIZEN_1=20');
      }

      for (final link in linksToProfessors) {
        final responce = await http.Client().get(Uri.parse(link));

        if (checkIsGoodResponce(responce)) {
          var professorPage = parse(responce.body);
          var professorNumber =
              professorPage.getElementsByClassName('col-sm-9 col-md-10').length;
        }
      }
    }
  }
}

void main() async {
  final db = sqlite3.open('db.sqlite');
  db.execute('DROP TABLE IF EXISTS Professors');
  // db.execute("""CREATE TABLE IF NOT EXISTS Professors (
  //               id INTEGER PRIMARY KEY,
  //               name TEXT NOT NULL,
  //               avatar TEXT NOT NULL
  //               )""");

  var first_page =
      'https://www.spbstu.ru/university/about-the-university/staff/';
  final response = await http.Client().get(Uri.parse(first_page));

  if (response.statusCode == 200) {
    var document = parse(response.body);
    var len = document.getElementsByClassName('pagination')[0].children.length;
    var lastPage = int.parse(document
        .getElementsByClassName('pagination')[0]
        .children[len - 2]
        .text);
    var links = [];
    links.add(first_page);

    for (var i = 2; i < lastPage + 1; i++) {
      links.add(
          'https://www.spbstu.ru/university/about-the-university/staff/?arrFilter_ff%5BNAME%5D=&arrFilter_pf%5BPOSITION%5D=&arrFilter_pf%5BSCIENCE_TITLE%5D=&arrFilter_pf%5BSECTION_ID_1%5D=849&arrFilter_pf%5BSECTION_ID_2%5D=&arrFilter_pf%5BSECTION_ID_3%5D=&del_filter=%D0%A1%D0%B1%D1%80%D0%BE%D1%81%D0%B8%D1%82%D1%8C&PAGEN_1=$i&SIZEN_1=20');
    }

    for (var j = 0; j < lastPage; j++) {
      final resp = await http.Client().get(Uri.parse(links[j].toString()));
      if (resp.statusCode == 200) {
        var page = parse(resp.body);
        var profsNum = page.getElementsByClassName('col-sm-9 col-md-10').length;
        for (var k = 0; k < profsNum; k++) {
          var profsAvatar =
              'https://www.spbstu.ru/${page.getElementsByClassName('col-sm-3 col-md-2')[k].children[0].attributes['src']}';
          if (j == 0) {
            var profsName = utf8.decode(page
                .getElementsByClassName('col-sm-9 col-md-10')[k]
                .children[0]
                .text
                .runes
                .toList());
            db.execute('''
            INSERT INTO Professors (name, avatar)
            VALUES (?, ?)''', [profsName, profsAvatar]);
          } else {
            var profsName = page
                .getElementsByClassName('col-sm-9 col-md-10')[k]
                .children[0]
                .text;
            db.execute('''
            INSERT INTO Professors (name, avatar)
            VALUES (?, ?)''', [profsName, profsAvatar]);
          }
        }
      } else {
        throw Exception();
      }
    }
  } else {
    throw Exception();
  }
}
