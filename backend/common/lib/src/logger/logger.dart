// ignore_for_file: lines_longer_than_80_chars

import 'dart:async';
import 'dart:io';

import 'package:l/l.dart';

class Logger {
  late final StreamSubscription<void> _logSubscription;
  final File file;

  Logger({required this.file}) {
    file.writeAsStringSync(
        '----- Log Info -----\n'
        'Date: ${DateTime.now()}\n'
        'App Version: 1.0.0\n'
        'Logging Level: INFO\n'
        'Operating System: ${Platform.operatingSystem}\n'
        'Device Info: ${Platform.localHostname}\n\n'
        '----- End of Initial Log -----\n\n',
        mode: FileMode.append,
      );
    _logSubscription = l.listen(_writeLogMessage);
  }

  Future<void> _writeLogMessage(LogMessage log) async {
    try {
      var message = log.message;
      var dateTime = log.date;
      var output =
          '${dateTime.toString().substring(0, dateTime.toString().length - 7)} | $message\n';
      file.writeAsStringSync(output, mode: FileMode.append);
    } on Object catch (e) {
      // ignore: avoid_print
      print('[Logger]: Error writing log message to file: $e');
    }
  }

  void close() {
    _logSubscription.cancel();
  }
}
