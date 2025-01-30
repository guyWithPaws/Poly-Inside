// ignore_for_file: unused_local_variable

import 'dart:async';
import 'dart:io';

import 'package:drift/native.dart';
import 'package:grpc/grpc.dart';
import 'package:l/l.dart';
import 'package:poly_inside_server/database/database.dart';
import 'package:poly_inside_server/database/provider_impl.dart';
import 'package:poly_inside_server/logger.dart';
import 'package:poly_inside_server/parser/parser.dart';
import 'package:poly_inside_server/service.dart';

Future<void> main() async {
  final file = File('server.log');
  await l.capture(
    () async {
      await runZonedGuarded(
        () async {
          final logger = Logger(file: file);
          
          final database = AppDatabase(NativeDatabase(File('/db/db.sqlite')));
          final provider = DatabaseProviderImpl(database: database);

          final parser = await Parser.create(provider);
          unawaited(parser.updateDatabase());

          final server = Server.create(services: [
            GRPCService(provider: provider),
          ], interceptors: []);
          l.i('[Server]: Server starts!');
          await server.serve(port: 9090);
          l.i('[Server]: Server is listening on port ${server.port}');
        },
        (e, st) {},
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
