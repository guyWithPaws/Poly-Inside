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
  final data = client.getReviewWithProfessor(ReviewsByUserIdRequest(id: 123));
  final e = await data.forEach((u) => print(u.list.map(
      (e) => '${e.review.comment} ${e.professor.name} ${e.review.userId}')));
  await channel.shutdown();
  return 0;
}
