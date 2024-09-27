import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:shared/shared.dart';

Future<int> main([List<String>? args]) async {
  final channel = ClientChannel(
    '127.0.0.1',
    port: 8080,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );
  final client = SearchServiceClient(channel);
  // ignore: cascade_invocations
  client.getReviewWithProfessor(ReviewsByUserIdRequest(id: 123));
  await channel.shutdown();
  return 0;
}
