import 'dart:convert';
import 'dart:io';

extension on String {
  static final RegExp unneccessarySpace = RegExp(r'\s+');
  static final RegExp unnecessarySymbols = RegExp('[0-9|.|,|!|?|/]');
  static final RegExp tooShortWords = RegExp(r'\b[a-z]{1,2}\b');

  List<String> makeBeautiful() => replaceAll(unnecessarySymbols, ' ')
      .replaceAll(tooShortWords, ' ')
      .replaceAll(unneccessarySpace, ' ')
      .toLowerCase()
      .split(' ')
      .toList();
}

class Filter {
  late String originalMessage;

  Map<String, String> alphabet = {};
  List<String> badWords = [];
  List<String> messageWords = [];

  static File jsonFile = File('assets/alphabet.json');
  static File txtFile = File('assets/bad_words.txt');
  static int numberOfBadWords = 4;

  Filter._();
  static final Filter instance = Filter._();

  bool check(String userMessage) {
    originalMessage = userMessage;
    messageWords = originalMessage.makeBeautiful();
    return messageAnalyzer();
  }

  Future<void> initializeAsyncLoaders() async {
    alphabet = await loadAlphabetFromJsonFile();
    badWords = await loadWordsFromFile();
  }

  Future<List<String>> loadWordsFromFile() async {
    final contents = await txtFile.readAsLines(encoding: const Utf8Codec());
    final badWords = <String>{};

    for (final word in contents) {
      if (word.isNotEmpty) {
        badWords.add(word.toLowerCase());
      }
    }

    return badWords.toList();
  }

  Future<Map<String, String>> loadAlphabetFromJsonFile() async {
    final jsonString = await jsonFile.readAsString();
    final jsonData = jsonDecode(jsonString);
    final alphabet = <String, String>{};

    if (jsonData is Map) {
      for (final entry in jsonData.entries) {
        if (entry.key is String && entry.value is String) {
          alphabet[entry.key.toString()] = entry.value as String;
        }
      }
    }

    return alphabet;
  }

  bool messageAnalyzer() {
    messageWords = messageWords
        .map((word) =>
            word.split('').map((letter) => alphabet[letter] ?? letter).join())
        .toList();

    var localStorage = <String>[];
    for (var i = 0; i < messageWords.length; ++i) {
      var newWord = messageWords[i];
      for (var j = i + 1; j < messageWords.length; ++j) {
        newWord = newWord + messageWords[j];
        localStorage.add(newWord);
      }
    }
    messageWords.addAll(localStorage);

    return searchBadWord();
  }

  bool searchBadWord() {
    var regExpBadWord = RegExp('');
    for (final word in messageWords) {
      for (final badWord in badWords) {
        regExpBadWord = RegExp(badWord);
        if (word.replaceAll(regExpBadWord, '').isEmpty) {
          return false;
        }
      }
    }
    return true;
  }
}

enum FilterTypes {
  accepted,
  rejected;

  String get name {
    switch (this) {
      case FilterTypes.accepted:
        return 'Accepted';
      case FilterTypes.rejected:
        return 'Rejected';
    }
  }
}
