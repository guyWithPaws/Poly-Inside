// ignore_for_file: lines_longer_than_80_chars

import 'dart:async';
import 'dart:io';

import 'package:common/common.dart';
import 'package:parser/parser/parser.dart';
import 'package:talker/talker.dart';

Future<void> main() async {
  final talkerObserver = MyTalkerObserver();
  final talker = Talker(observer: talkerObserver);
  await runZonedGuarded(
    () async {
      final database = AppDatabase(talker: talker);
      final provider = DatabaseProviderImpl(database: database);

      await Future<void>.delayed(const Duration(seconds: 10));

      final parser = await Parser.create(provider);
      await parser.updateDatabase();
    },
    (e, st) {
      talker.error('[Parser]: Uncaught error: $e $st');
    },
  );
}

class MyTalkerObserver extends TalkerObserver {
  final file = File('/logs/server.log');

  MyTalkerObserver();

  @override
  void onError(TalkerError err) {
    try {
      var message = err.message;
      var dateTime = err.time;
      var output =
          '${dateTime.toString().substring(0, dateTime.toString().length - 7)} | $message\n';
      file.writeAsStringSync(output, mode: FileMode.append);
    } on Object catch (e) {
      // ignore: avoid_print
      print('[Logger]: Error writing log message to file: $e');
    }
    super.onError(err);
  }

  @override
  void onException(TalkerException exception) {
    try {
      var message = exception.message;
      var dateTime = exception.time;
      var output =
          '${dateTime.toString().substring(0, dateTime.toString().length - 7)} | $message\n';
      file.writeAsStringSync(output, mode: FileMode.append);
    } on Object catch (e) {
      // ignore: avoid_print
      print('[Logger]: Error writing log message to file: $e');
    }
    super.onException(exception);
  }

  @override
  void onLog(TalkerData log) {
    try {
      var message = log.message;
      var dateTime = log.time;
      var output =
          '${dateTime.toString().substring(0, dateTime.toString().length - 7)} | $message\n';
      file.writeAsStringSync(output, mode: FileMode.append);
    } on Object catch (e) {
      // ignore: avoid_print
      print('[Logger]: Error writing log message to file: $e');
    }
    super.onLog(log);
  }
}
