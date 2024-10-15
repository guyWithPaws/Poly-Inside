import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:shared/shared.dart';

import 'dart:math';

Future<int> main([List<String>? args]) async {
  final channel = ClientChannel(
    '127.0.0.1',
    port: 9090,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );
  final client = SearchServiceClient(channel);
  //await client.addProfile(User(id: 123));
  // ignore: cascade_invocations
  var output = await client.getProfile(UserInfoByUserIdRequest(id: 123));
  print(output.id);

  // await client.addReviewReaction(Reaction(
      // id: '123', userId: 1111, professorId: '1111', reviewId: '', type: 0));
// 
  // await client.addReviewReaction(Reaction(
      // id: '1234',
      // userId: 123,
      // professorId: '1',
      // reviewId: '3',
      // type: 1));
  // 
  // await client.addReviewReaction(Reaction(
      // id: '12345',
      // userId: 123,
      // professorId: '12',
      // reviewId: '2',
      // type: 1));
  // 
  // await client.addReviewReaction(Reaction(
      // id: '123456',
      // userId: 123,
      // professorId: '123',
      // reviewId: '1',
      // type: 1));
  // 
  // await client.addReviewReaction(Reaction(
      // id: '1234567',
      // userId: 123,
      // professorId: '1234',
      // reviewId: '0',
      // type: 1));

  await client.addReviewReaction(Reaction(
    userId: 123,
    professorId: '1234',
    reviewId: '0',
    type: 0
  ));
  //await client.likeReview(
  //    LikeRequest(userId: 1234, professorId: '123', reviewId: '112', type: 1));
  //await channel.shutdown();
  return 0;
}
