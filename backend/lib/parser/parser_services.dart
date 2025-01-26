import 'dart:convert';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;
import 'package:image/image.dart' as img;
import 'package:l/l.dart';
import 'package:poly_inside_server/database/provider_impl.dart';
import 'package:poly_inside_server/parser/parser_data.dart';
import 'package:puppeteer/puppeteer.dart';
import 'package:shared/shared.dart';

class HttpClientService {
  final http.Client _client = http.Client();

  Future<http.Response> get(Uri url) => _client.get(url);
}

class VerificationService {
  final DatabaseProviderImpl provider;

  VerificationService({
    required this.provider,
  });

  void compare(List<String> professorsNames) {}
}

class ClickerService {
  final String mainSchedulePage = 'https://ruz.spbstu.ru';

  final educationForms = <String>['Очная', 'Очно-заочная', 'Заочная'];
  final educationLevels = <String>[
    'Бакалавр',
    'Магистр',
    'Специалист',
    'Аспирант',
    'СПО'
  ];

  static const Duration duration = Duration(milliseconds: 500);

  Future<List<GroupData>> getAllGroupsLinks(List<String> links) async {
    var browser = await puppeteer.launch();

    var page = await browser.newPage();

    var groupsLinks = <GroupData>[];

    for (final link in links) {
      groupsLinks.addAll(await getGroupData(page, link));
    }

    await browser.close();

    return groupsLinks;
  }

  Future<List<GroupData>> getGroupData(Page page, String url) async {
    await page.goto(url);

    var groupsData = <GroupData>[];

    for (final form in educationForms) {
      await page.evaluate<void>('''
        (function() {
          const links = document.querySelectorAll('#rootPageContainer > .app .faculty .tabs-area .tabbed-area__tabs a');
          links.forEach(link => {
          const reactId = link.getAttribute('data-reactid');
            if (link.textContent.trim() === "$form") {
              link.click();
            }
          });
        })();
        ''');

      await Future<void>.delayed(duration);

      for (final level in educationLevels) {
        await page.evaluate<void>('''
          (function() {
            const links = document.querySelectorAll('#rootPageContainer > .app .faculty .tabs-area .tabbed-area__tabs a');
            links.forEach(link => {
            const reactId = link.getAttribute('data-reactid');
              if (link.textContent.trim() === "$level") {
                link.click();
              }
            });
          })(); 
          ''');

        var result = await page.evaluate<void>('''
          (async function() {
            let result = [];
            const links = document.querySelectorAll('#rootPageContainer > .app .faculty .tabs-area .tabbed-area__pane .faculty__levels a');
            links.forEach(link => {
              result.push({
                number: link.textContent, 
                link: link.getAttribute('href')
              });
            });
            return result;
            })(); 
            ''') as List<dynamic>;

        for (final data in result) {
          final number = data.values.elementAt(0).toString();
          final link = mainSchedulePage + data.values.elementAt(1).toString();
          if (!number.contains('_')) {
            groupsData.add(GroupData(number: number, link: link));
          }
        }
      }
    }
    return groupsData;
  }
}

class CryptoService {
  /// Notes for Devs!
  /// Для генерации уникального [uniqueId] используется [professorName],
  /// а также его уникальный паттерн [uniquePattern], который берется из
  /// карточки преподавателя на сайте профессорского состава. Это было добавлено
  /// во избежание возникновления в базе данных повторяющихся значений.
  /// Так как на сайте присутствуют преподаватели с полностью
  /// одинаковым ФИО.
  /// Good luck! 😽
  ///
  String generateUniqueId(String professorName, String uniquePattern) {
    var bytes = utf8.encode(professorName + uniquePattern);
    var uniqueId = sha1.convert(bytes).toString();
    return uniqueId;
  }
}

class ImageService {
  final HttpClientService httpClientService;

  static const avatarQuality = 60;
  static const smallAvatarQuality = 20;

  ImageService({required this.httpClientService});

  Future<Map<String, Uint8List?>> getAvatar(String avatarUrl) async {
    var data = await httpClientService.get(Uri.parse(avatarUrl));
    var image = data.bodyBytes;
    var decodeImage = img.decodeImage(image);

    var compressedAvatar =
        Uint8List.fromList(img.encodeJpg(decodeImage!, quality: avatarQuality));
    var compressedSmallAvatar = Uint8List.fromList(
        img.encodeJpg(decodeImage, quality: smallAvatarQuality));

    return {'avatar': compressedAvatar, 'smallAvatar': compressedSmallAvatar};
  }
}

class DatabaseService {
  final DatabaseProviderImpl provider;
  late final List<Professor> professorsData;
  late final List<String> professorsNames;

  DatabaseService._({
    required this.provider,
    required this.professorsData,
  }) {
    professorsNames =
        professorsData.map((professor) => professor.name).toList();
  }

  static Future<DatabaseService> create(DatabaseProviderImpl provider) async {
    final professorsData = await provider.getOnceAllProfessors();
    return DatabaseService._(
        provider: provider, professorsData: professorsData);
  }

  Future<void> addProfessor(
      Professor professor, DatabaseProviderImpl provider) async {
    try {
      await provider.addProfessor(professor);
    } on Object catch (e) {
      // ignore: lines_longer_than_80_chars
      l.e('[Parser]: Something went wrong while attempting to add a professor $e');
    }
  }

  Future<List<Map<String, String>>> getProfessorsIdsAndNames() async =>
      professorsData
          .map(
            (professor) => {
              'id': professor.id,
              'name': professor.name,
            },
          )
          .toList();

  Future<List<Map<String, String>>> updateProfessorsIdsAndNames() async {
    var data = await provider.getOnceAllProfessors();
    return data
        .map((professor) => {
              'id': professor.id,
              'name': professor.name,
            })
        .toList();
  }

  Future<void> addProfessorToGroup(
          String id, String number, String professorId) async =>
      await provider.addProfessorToGroup(id, number, professorId);

  Future<void> compareLinksWithExistingProfessors() async {}
}
