import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:shared/shared.dart';

Future<int> main([List<String>? args]) async {
  // ignore: unused_local_variable
  final channel = ClientChannel(
    '127.0.0.1',
    port: 9090,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );

  return 0;
}
