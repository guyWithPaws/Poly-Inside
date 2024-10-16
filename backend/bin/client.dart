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

  // await client.addReview(Review(
  // reviewId: '0000',
  // userId: 123,
  // professorId: 'b5a697ced51cba828b6cf53627d1b88b747e615e',
  // likes: 0,
  // dislikes: 0,
  // comment: 'лучший'
  // ));
//
  // await client.addReview(Review(
  // reviewId: '0001',
  // userId: 123,
  // professorId: 'b5a697ced51cba828b6cf53627d1b88b747e615e',
  // likes: 0,
  // dislikes: 0,
  // comment: 'лучший'
  // ));
//
  // await client.addReview(Review(
  // reviewId: '0002',
  // userId: 123,
  // professorId: 'b5a697ced51cba828b6cf53627d1b88b747e615e',
  // likes: 0,
  // dislikes: 0,
  // comment: 'лучший'
  // ));

  // await client.deleteReview(DeleteReviewRequest(
  //   reviewId: '0000'
  // ));

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

  // await client.addReviewReaction(
  // Reaction(userId: 123, professorId: '1234', reviewId: '0', type: 0));
  //await client.likeReview(
  //    LikeRequest(userId: 1234, professorId: '123', reviewId: '112', type: 1));
  //await channel.shutdown();

  // await client.addReviewReaction(Reaction(
  // id: '123456',
  // userId: 123,
  // professorId: 'b5a697ced51cba828b6c',
  // reviewId: '0000'
  // ));
//

  // await client.addReviewReaction(Reaction(
  // id: '12345',
  // professorId: 'b5a697ced51cba828b6cf53627d1b88b747e615e',
  // reviewId: '0000',
  // userId: 123,
  // type: 2));
  // await client.addReviewReaction(Reaction(
  //     id: '123456',
  //     professorId: 'b5a697ced51cba828b6cf53627d1b88b747e615e',
  //     reviewId: '0000',
  //     userId: 123,
  //     type: 0));

  // await client.addReviewReaction(Reaction(
  //     id: '123456',
  //     professorId: '4164b6b3bfd6d6307497ea990b44dc7b1517462b',
  //     userId: 123,
  //     reviewId: '1',
  //     type: 1));

  client.getReviewsByProfessorId(ReviewsByProfessorIdRequest(id: 'b5a697ced51cba828b6c')).listen((review) {
    //print(review.list.length);
  });

  client.getReviewWithProfessor(ReviewsByUserIdRequest(id: 123)).listen((_) {
    print(_.list.length);
    _.list.forEach((v) {
      //print(v.professor);
      print('Reaction: ${v.reaction}');
      //print(v.review);
    });
  });

  return 0;
}
