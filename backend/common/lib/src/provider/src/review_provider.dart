import 'package:common/common.dart';
import 'package:drift/drift.dart';
import 'package:shared/src/protobuf/service.pb.dart';

mixin class ReviewProviderImpl implements ReviewProvider {
  final database = DatabaseProviderImpl.db;

  @override
  Future<int> addReview(Review review) async {
    final reviews = await (database.select(database.reviews)
          ..where((u) => u.professorId.equals(review.professorId)))
        .get();
    final reviewsCount = reviews.length;
    final professor = await (database.select(database.professors)
          ..where((e) => e.id.equals(review.professorId)))
        .getSingle();
    final rating = professor.rating;

    final newRating = (rating * (reviewsCount == 0 ? 1 : reviewsCount) +
            (review.harshness +
                    review.objectivity +
                    review.professionalism +
                    review.loyalty) /
                4) /
        (reviewsCount + 1);
    final newHarshness =
        (professor.harshness * (reviewsCount == 0 ? 1 : reviewsCount) +
                review.harshness) /
            (reviewsCount + 1);
    final newObjectivity =
        (professor.objectivity * (reviewsCount == 0 ? 1 : reviewsCount) +
                review.objectivity) /
            (reviewsCount + 1);
    final newLoyalty =
        (professor.loyalty * (reviewsCount == 0 ? 1 : reviewsCount) +
                review.loyalty) /
            (reviewsCount + 1);
    final newProfessionalism =
        (professor.professionalism * (reviewsCount == 0 ? 1 : reviewsCount) +
                review.professionalism) /
            (reviewsCount + 1);

    await database.update(database.professors).replace(
          ProfessorsCompanion(
            professionalism: Value<double>(newProfessionalism),
            loyalty: Value<double>(newLoyalty),
            objectivity: Value<double>(newObjectivity),
            harshness: Value<double>(newHarshness),
            id: Value<String>(professor.id),
            name: Value<String>(professor.name),
            avatar: Value<Uint8List>(
              Uint8List.fromList(
                professor.avatar,
              ),
            ),
            reviewsCount: Value<int>(reviewsCount + 1),
            rating: Value<double>(newRating),
            smallAvatar: Value<Uint8List>(
              Uint8List.fromList(
                professor.smallAvatar,
              ),
            ),
          ),
        );

    return await database.into(database.reviews).insert(
          ReviewsCompanion(
            id: Value(review.id),
            likes: Value(review.likes),
            dislikes: Value(review.dislikes),
            professorId: Value(review.professorId),
            userId: Value(review.userId),
            comment: Value(review.comment),
            date: Value(review.date),
            objectivity: Value(review.objectivity),
            loyalty: Value(review.loyalty),
            harshness: Value(review.harshness),
            professionalism: Value(review.professionalism),
          ),
        );
  }

  @override
  Future<void> deleteReview(String reviewId) async {
    final review = await (database.select(database.reviews)
          ..where((f) => f.id.equals(reviewId)))
        .getSingle();
    final professor = await (database.select(database.professors)
          ..where((f) => f.id.equals(review.professorId)))
        .getSingle();
    var newHarshness = (professor.reviewsCount - 1 == 0)
        ? 0.0
        : ((professor.harshness * professor.reviewsCount) - review.harshness) /
            (professor.reviewsCount - 1);
    var newLoyalty = (professor.reviewsCount - 1 == 0)
        ? 0.0
        : ((professor.loyalty * professor.reviewsCount) - review.loyalty) /
            (professor.reviewsCount - 1);
    var newObjectivity = (professor.reviewsCount - 1 == 0)
        ? 0.0
        : ((professor.objectivity * professor.reviewsCount) -
                review.objectivity) /
            (professor.reviewsCount - 1);
    var newProfessionalism = (professor.reviewsCount - 1 == 0)
        ? 0.0
        : ((professor.professionalism * professor.reviewsCount) -
                review.professionalism) /
            (professor.reviewsCount - 1);
    var newRating =
        (newHarshness + newLoyalty + newObjectivity + newProfessionalism) / 4;
    var newReviewsCount = professor.reviewsCount - 1;

    await database.update(database.professors).replace(
          ProfessorsCompanion(
              id: Value(professor.id),
              name: Value(professor.name),
              avatar: Value(Uint8List.fromList(professor.avatar)),
              smallAvatar: Value(Uint8List.fromList(professor.smallAvatar)),
              reviewsCount: Value(newReviewsCount),
              rating: Value(newRating),
              harshness: Value(newHarshness),
              loyalty: Value(newLoyalty),
              objectivity: Value(newObjectivity),
              professionalism: Value(newProfessionalism)),
        );
    await (database.delete(database.reviews)
          ..where(
            (f) => f.id.equals(reviewId),
          ))
        .go();
  }

  @override
  Stream<List<ReviewWithUser>> getAllReviewsByProfessor(String professorId) =>
      (database.select(database.reviews)
            ..where((u) => u.professorId.equals(professorId)))
          .join([
            innerJoin(
              database.users,
              database.users.id.equalsExp(database.reviews.userId),
            ),
            leftOuterJoin(
              database.reactions,
              database.reactions.userId.equalsExp(database.reviews.userId) &
                  database.reactions.professorId
                      .equalsExp(database.reviews.professorId) &
                  database.reactions.reviewId.equalsExp(database.reviews.id),
            )
          ])
          .watch()
          .map(
            (rows) => rows
                .map((r) => ReviewWithUser(
                    user: r.readTable(database.users),
                    review: r.readTable(database.reviews),
                    reaction: r.readTableOrNull(database.reactions)))
                .toList(),
          );

  @override
  Future<Review> getReview(String id) async {
    final review = await (database.select(database.reviews)
          ..where((t) => t.id.equals(id)))
        .getSingle();
    return review;
  }

  @override
  Stream<List<ReviewWithProfessor>> getReviewsWithProfessor(int userId) =>
      (database.select(database.reviews)..where((u) => u.userId.equals(userId)))
          .join([
            innerJoin(
              database.professors,
              database.professors.id.equalsExp(database.reviews.professorId),
            ),
            leftOuterJoin(
              database.reactions,
              database.reactions.userId.equalsExp(database.reviews.userId) &
                  database.reactions.professorId
                      .equalsExp(database.reviews.professorId) &
                  database.reactions.reviewId.equalsExp(database.reviews.id),
            ),
          ])
          .watch()
          .map(
            (rows) => rows
                .map(
                  (r) => ReviewWithProfessor(
                    professor: r.readTable(database.professors),
                    review: r.readTable(database.reviews),
                    reaction: r.readTableOrNull(database.reactions),
                  ),
                )
                .toList(),
          );

  @override
  Future<bool> updateReview(Review review) async =>
      await database.update(database.reviews).replace(
            ReviewsCompanion(
              id: Value(review.id),
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
