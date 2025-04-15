import 'dart:async';

import 'package:common/common.dart';
import 'package:l/l.dart';
import 'package:parser/parser/parser.dart';

Future<void> main() async {
  await l.capture(
    () async {
      await runZonedGuarded(
        () async {
          final database = AppDatabase();
          final provider = DatabaseProviderImpl(database: database);

          await Future<void>.delayed(const Duration(seconds: 10));

          final parser = await Parser.create(provider);
          await parser.updateDatabase();
        },
        (e, st) {
          l.e('[Parser]: Uncaught error: $e $st');
        },
      );
    },
    LogOptions(
      outputInRelease: true,
      messageFormatting: (message, logLevel, dateTime) =>
          // ignore: lines_longer_than_80_chars
          '${dateTime.toString().substring(0, dateTime.toString().length - 7)} | $message',
    ),
  );
}
