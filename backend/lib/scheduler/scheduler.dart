// ignore_for_file: lines_longer_than_80_chars

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:l/l.dart';
import 'package:poly_inside_server/parser/parser.dart';

class Scheduler {
  final Duration interval;
  final Parser parser;
  Timer? _timer;
  File? _file;

  final String _path = r'lib\scheduler\config.json';

  Scheduler({
    required this.interval,
    required this.parser,
  }) {
    _file = File(_path);
  }

  Future<int> _readJsonFile() async {
    var data = await _file?.readAsString();
    return int.parse(jsonDecode(data!)['lastUpdate'].toString());
  }

  Future<void> _writeLastUpdateToJsonFile(DateTime date) async {
    var data = date.millisecondsSinceEpoch.toString();

    var outputString = '{"lastUpdate" : $data}';
    await _file?.writeAsString(outputString);
  }

  Future<void> start() async {
    var lastUpdate = await _readJsonFile();
    var lastUpdateDate = DateTime.fromMillisecondsSinceEpoch(lastUpdate);

    var todaysDate = DateTime.now();
    var nextUpdateDate = lastUpdateDate.add(interval);
    var difference = nextUpdateDate.difference(todaysDate);
    difference = difference.isNegative ? Duration.zero : difference;

    _timer = Timer(difference, () {
      unawaited(parser.updateDatabase());
      _timer = Timer.periodic(interval, (timer) async {
        unawaited(parser.updateDatabase());

        todaysDate = DateTime.now();
        await _writeLastUpdateToJsonFile(todaysDate);
        l.i('[Scheduler]: Next update in ${todaysDate.add(interval)}!');
      });

      todaysDate = DateTime.now();
      l.i('[Scheduler]: Scheduler starts! Next update in ${todaysDate.add(interval)}!');
    });
  }

  void stop() {
    _timer?.cancel();
    l.i('[Scheduler]: Sheduler was stopped!');
  }
}
