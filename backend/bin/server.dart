// ignore_for_file: unused_local_variable

import 'dart:async';
import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:l/l.dart';
import 'package:poly_inside_server/database/database.dart';
import 'package:poly_inside_server/database/provider_impl.dart';
import 'package:poly_inside_server/logger.dart';
import 'package:poly_inside_server/service.dart';

Future<void> main() async {
  final file = File('server.log');
  await l.capture(
    () async {
      await runZonedGuarded(
        () async {
          final logger = Logger(file: file);

          final database = AppDatabase();
          final provider = DatabaseProviderImpl(database: database);

          await Future.delayed(const Duration(seconds: 35));
          final server = Server.create(
            services: [
              GRPCService(provider: provider),
            ],
            interceptors: [],
          );
          l.i('[Server]: Server starts!');

          await server.serve(port: 9090);
          l.i('[Server]: Server is listening on port ${server.port}');
        },
        (e, st) {
          l.e('[Server]: Uncaught error: $e $st');
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
