import 'package:common/common.dart';
import 'package:drift/drift.dart';
import 'package:shared/src/protobuf/service.pb.dart';

mixin class RejectedReviewProviderImpl implements RejectedReviewProvider {
  final database = DatabaseProviderImpl.db;

  @override
  Future<void> addRejectedReview(Review review) async {
    await database.into(database.rejectedReviews).insert(
          ReviewsCompanion(
            id: Value('${review.userId}${review.date}'),
            likes: Value(review.likes),
            dislikes: Value(review.dislikes),
            professorId: Value(review.professorId),
            professionalism: Value(review.professionalism),
            userId: Value(review.userId),
            comment: Value(review.comment),
            date: Value(review.date),
            objectivity: Value(review.objectivity),
            loyalty: Value(review.loyalty),
            harshness: Value(review.harshness),
          ),
        );
  }
}
