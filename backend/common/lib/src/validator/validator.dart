import 'dart:convert';
import 'dart:io';

import 'package:l/l.dart';

class FileDataLoader {
  final File jsonFile = File('/assets/alphabet.json');
  final File txtFile = File('/assets/bad_words.txt');

  Future<Set<String>> loadWordsFromFile() async {
    final contents = await txtFile.readAsLines(
        encoding: const Utf8Codec());
    final badWords = <String>{};

    for (final word in contents) {
      if (word.isNotEmpty) badWords.add(word);
    }

    return badWords;
  }

  Future<Map<String, String>>
      loadAlphabetFromJsonFile() async {
    final jsonString = await jsonFile.readAsString();
    final jsonData = jsonDecode(jsonString);
    final alphabet = <String, String>{};

    if (jsonData is Map) {
      for (final entry in jsonData.entries) {
        if (entry.key is String && entry.value is String) {
          alphabet[entry.key.toString()] =
              entry.value as String;
        }
      }
    }
    return alphabet;
  }
}

class TextProcessor {
  final RegExp unneccessarySpace = RegExp(r'\s+');
  final RegExp unnecessarySymbols =
      RegExp('[0-9|.|,|!|?|/]');
  final RegExp tooShortWords = RegExp(r'\b[a-z]{1,2}\b');

  List<String> makeBeautiful(String input) => input
      .replaceAll(unnecessarySymbols, ' ')
      .replaceAll(tooShortWords, ' ')
      .replaceAll(unneccessarySpace, ' ')
      .toLowerCase()
      .split(' ')
      .toList();
}

class Filter {
  final FileDataLoader dataLoader;
  final TextProcessor textProcessor;

  late Map<String, String> alphabet;
  late Set<String> badWords;
  late List<String> messageWords;

  Filter(
      {required this.dataLoader,
      required this.textProcessor});

  Future<void> initializeAsyncLoaders() async {
    alphabet = await dataLoader.loadAlphabetFromJsonFile();
    badWords = await dataLoader.loadWordsFromFile();
    l.i('[Filter]: Filter initialization was successful');
  }

  bool check(String userMessage) {
    messageWords = textProcessor.makeBeautiful(userMessage);
    return messageAnalyzer();
  }

  bool messageAnalyzer() {
    messageWords = messageWords
        .map((word) => word
            .split('')
            .map((letter) => alphabet[letter] ?? letter)
            .join())
        .toList();

    var localStorage = <String>[];
    for (var i = 0; i < messageWords.length; ++i) {
      var newWord = messageWords[i];
      for (var j = i + 1; j < messageWords.length; ++j) {
        var buffer = newWord + messageWords[j];
        newWord = buffer;
        localStorage.add(newWord);
      }
    }
    messageWords.addAll(localStorage);

    return searchBadWord();
  }

  bool searchBadWord() {
    for (final word in messageWords) {
      for (final badWord in badWords) {
        final regExpBadWord = RegExp(badWord);
        if (word.replaceAll(regExpBadWord, '').isEmpty) {
          return false;
        }
      }
    }
    return true;
  }
}
