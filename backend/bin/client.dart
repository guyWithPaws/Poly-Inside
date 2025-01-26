import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:shared/shared.dart';

Future<int> main([List<String>? args]) async {
  // ignore: unused_local_variable
  final channel = ClientChannel(
    'localhost',
    port: 8080,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );

  var client = SearchServiceClient(channel);

  // ignore: unused_local_variable
  var stream = client.getListProfessorsByGroup(ListProfessorsByGroupRequest(count: 10, group: '5132704/30003'));

  // ignore: lines_longer_than_80_chars, unused_local_variable
  var test = client.getReviewWithProfessor(ReviewsByUserIdRequest(id: 12345678));

  return 0;
}
