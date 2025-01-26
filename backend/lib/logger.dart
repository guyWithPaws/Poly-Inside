import 'dart:async';
import 'dart:io';

import 'package:l/l.dart';

class Logger {
  late final StreamSubscription<void> _logSubscription;
  final File file;

  Logger({required this.file});

  void start() {
    _logSubscription = l.listen(_writeLogMessage);
  }

  Future<void> _writeLogMessage(LogMessage message) async {
    try {
      file.writeAsStringSync('${message.toJson()}\n', mode: FileMode.append);
    } on Object catch (e) {
      // ignore: avoid_print
      print('[Logger]: Error writing log message to file: $e');
    }
  }

  void close() {
    _logSubscription.cancel();
  }
}
