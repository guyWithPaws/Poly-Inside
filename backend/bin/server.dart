import 'dart:async';
import 'dart:io';

import 'package:drift/native.dart';
import 'package:grpc/grpc.dart';
import 'package:l/l.dart';
import 'package:poly_inside_server/database/database.dart';
import 'package:poly_inside_server/database/provider_impl.dart';
import 'package:poly_inside_server/service.dart';
import 'package:poly_inside_server/validator/validator.dart';

Future<void> main() async {
  final file = File('server.log');
  await l.capture(
    () async {
      await runZonedGuarded(
        () async {
          await Filter.instance.initializeAsyncLoaders();
          final database = AppDatabase(NativeDatabase(File('db.sqlite')));
          final provider = DatabaseProviderImpl(database: database);
          final server = Server.create(services: [
            GRPCService(provider: provider),
          ], interceptors: []);
          await server.serve(port: 8080);
          l.i('Server listening on ${server.port}');
        },
        (e, st) {
          file
            ..writeAsStringSync(e.toString())
            ..writeAsStringSync(st.toString());
          l.e(e, st);
        },
      );
    },
    LogOptions(
      outputInRelease: true,
      messageFormatting: (message, logLevel, dateTime) =>
          '${dateTime.toString().substring(0, dateTime.toString().length - 7)} | $message',
    ),
  );
}
