import 'package:common/src/common_base.dart';
import 'package:drift/drift.dart';
import 'package:shared/src/protobuf/service.pb.dart';

mixin class ReactionProviderImpl implements ReactionProvider {
  final database = DatabaseProviderImpl.db;
  
  @override
  Future<void> addReaction(Reaction reaction) async {
    final currentReview = await (database.select(database.reviews)
          ..where((f) => f.id.equals(reaction.reviewId)))
        .getSingle();
    final ReviewsCompanion outputReviewsCompanion;
    if (reaction.type == 1) {
      final newLikesCount = currentReview.likes + 1;
      outputReviewsCompanion =
          ReviewsCompanion(likes: Value<int>(newLikesCount));
    } else {
      final newDislikesCount = currentReview.dislikes + 1;
      outputReviewsCompanion =
          ReviewsCompanion(dislikes: Value<int>(newDislikesCount));
    }
    await (database.update(database.reviews)
          ..where((f) => f.id.equals(reaction.reviewId)))
        .write(outputReviewsCompanion);

    await database.into(database.reactions).insert(
          ReactionsCompanion(
            id: Value<String>(reaction.id),
            userId: Value<int>(reaction.userId),
            professorId: Value<String>(reaction.professorId),
            reviewId: Value(reaction.reviewId),
            // ignore: avoid_bool_literals_in_conditional_expressions
            liked: Value<bool>(reaction.type == 1 ? true : false),
          ),
        );
  }

  @override
  Future<void> deleteReaction(String id) async {
    final currentReaction = await (database.select(database.reactions)
          ..where((f) => f.id.equals(id)))
        .getSingle();
    final reviewId = currentReaction.reviewId;
    final currentReview = await (database.select(database.reviews)
          ..where((f) => f.id.equals(reviewId)))
        .getSingle();

    final ReviewsCompanion outputReviewsCompanion;
    if (currentReaction.type == 1) {
      final newLikesCount = currentReview.likes - 1;
      outputReviewsCompanion =
          ReviewsCompanion(likes: Value<int>(newLikesCount));
    } else {
      final newDislikesCount = currentReview.dislikes - 1;
      outputReviewsCompanion =
          ReviewsCompanion(likes: Value<int>(newDislikesCount));
    }
    await (database.update(database.reviews)
          ..where((f) => f.id.equals(reviewId)))
        .write(outputReviewsCompanion);
    await (database.delete(database.reactions)..where((t) => t.id.equals(id)))
        .go();
  }

  @override
  Future<Reaction> getReaction(String reactionId) async {
    final reaction = await (database.select(database.reactions)
          ..where((t) => t.id.equals(reactionId)))
        .getSingle();
    return reaction;
  }

  @override
  Future<bool> isReactionExists(Reaction reaction) async {
    final query = await (database.select(database.reactions)
          ..where((r) =>
              r.userId.equals(reaction.userId) &
              r.professorId.equals(reaction.professorId) &
              r.reviewId.equals(reaction.reviewId)))
        .get();

    return query.isNotEmpty;
  }

  @override
  Future<void> updateReaction(Reaction reaction) async {
    final currentReview = await (database.select(database.reviews)
          ..where((f) => f.id.equals(reaction.reviewId)))
        .getSingle();
    final ReviewsCompanion outputReviewsCompanion;
    if (reaction.type == 1) {
      final newLikesCount = currentReview.likes + 1;
      final newDislikesCount = currentReview.dislikes - 1;
      outputReviewsCompanion = ReviewsCompanion(
          likes: Value<int>(newLikesCount),
          dislikes: Value<int>(newDislikesCount));
    } else {
      final newLikesCount = currentReview.likes - 1;
      final newDislikesCount = currentReview.dislikes + 1;
      outputReviewsCompanion = ReviewsCompanion(
          likes: Value<int>(newLikesCount),
          dislikes: Value<int>(newDislikesCount));
    }
    await (database.update(database.reviews)
          ..where((f) => f.id.equals(reaction.reviewId)))
        .write(outputReviewsCompanion);
    await database.update(database.reactions).write(ReactionsCompanion(
        // ignore: avoid_bool_literals_in_conditional_expressions
        liked: Value<bool>(reaction.type == 1 ? true : false)));
  }
}
