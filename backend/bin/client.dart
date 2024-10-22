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

  var client = SearchServiceClient(channel);

  var stream = client.getListProfessorsByGroup(
      ListProfessorsByGroupRequest(count: 10, group: '5132704/30003'));

  stream.listen((data) {
    for (final t in data.professors) {
      print(t.name);
    }
  });

  return 0;
}
