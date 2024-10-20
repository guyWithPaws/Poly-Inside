import 'package:drift/drift.dart';
import 'package:l/l.dart';
import 'package:poly_inside_server/database/database.dart';
import 'package:poly_inside_server/database/provider.dart';
import 'package:shared/shared.dart';

class DatabaseProviderImpl
    implements
        ProfessorProvider,
        UserProvider,
        ReviewProvider,
        RejectedReviewProvider,
        ReactionProvider {
  DatabaseProviderImpl({required this.database});

  final AppDatabase database;

  @override
  Future<List<Professor>> findProfessorByName(String name, int count) =>
      (database.select(database.professors)
            ..where((u) => u.name.like('%$name%'))
            ..limit(count))
          .get();

  @override
  Stream<List<Professor>> getAllProfessors(int count) =>
      (database.select(database.professors)..limit(count))
          .watch()
          .asBroadcastStream();

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
  Future<User?> getUserByUserId(int userId) async {
    final users = await (database.select(database.users)
          ..where(
            (u) => u.id.equals(
              userId,
            ),
          ))
        .get();
    return users.isEmpty ? null : users.first;
  }

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

  @override
  Future<bool> updateUser(User user) async =>
      await database.update(database.users).replace(
            UsersCompanion(
              id: Value<int>(user.id),
              rating: Value<int>(user.rating),
              name: Value<String>(user.name),
              avatar: Value<Uint8List>(
                Uint8List.fromList(
                  user.avatar,
                ),
              ),
            ),
          );

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
  Future<void> addUser(User user) async {
    await database.into(database.users).insert(
          UsersCompanion(
            id: Value<int>(user.id),
            rating: Value<int>(user.rating),
            group: Value<String>(user.group),
            name: Value<String>(user.name),
            avatar: Value<Uint8List>(
              Uint8List.fromList(
                user.avatar,
              ),
            ),
          ),
        );
  }

  @override
  Future<void> addProfessor(Professor professor) async {
    await database.into(database.professors).insert(
          ProfessorsCompanion(
            objectivity: Value(professor.objectivity),
            loyalty: Value(professor.loyalty),
            harshness: Value(professor.harshness),
            professionalism: Value(professor.professionalism),
            reviewsCount: Value<int>(professor.reviewsCount),
            rating: Value<double>(professor.rating),
            id: Value<String>(professor.id),
            name: Value<String>(professor.name),
            smallAvatar: Value<Uint8List>(
              Uint8List.fromList(professor.smallAvatar),
            ),
            avatar: Value<Uint8List>(
              Uint8List.fromList(
                professor.avatar,
              ),
            ),
          ),
        );
  }

  @override
  Future<List<Professor>> getOnceAllProfessors() async =>
      await (database.select(database.professors)..limit(4000)).get();

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
  Future<void> addProfessorToGroup(
          String id, String number, String professorId) async =>
      await database.into(database.groups).insert(
            GroupsCompanion(
              id: Value(id),
              number: Value(number),
              professorId: Value(professorId),
            ),
          );

  @override
  Future<void> deleteReaction(
      int userId, String professorId, String reviewId) async {
    l.v('Delete reaction');
    await (database.delete(database.reactions)
          ..where((t) =>
              (t.userId.equals(userId)) &
              t.professorId.equals(professorId) &
              t.reviewId.equals(reviewId)))
        .go();
  }

  @override
  Future<void> addReaction(Reaction reaction) async {
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
  Future<void> updateReaction(Reaction reaction) async =>
      await database.update(database.reactions).replace(ReactionsCompanion(
          id: Value<String>(reaction.id),
          userId: Value<int>(reaction.userId),
          reviewId: Value<String>(reaction.reviewId),
          professorId: Value<String>(reaction.professorId),
          liked: Value<bool>(reaction.type == 1 ? true : false)));

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
  Future<Review> getReview(String id) async {
    final review = await (database.select(database.reviews)
          ..where((t) => t.id.equals(id)))
        .getSingle();
    return review;
  }

  @override
  Future<Reaction> getReaction(String reactionId) async {
    final reaction = await (database.select(database.reactions)
          ..where((t) => t.id.equals(reactionId)))
        .getSingle();
    return reaction;
  }

  @override
  Stream<List<Professor>> getProfessorsByGroup(
      int count, String group, int order) async* {
    ListProfessorsByGroupRequest();
    var professorsByGroup = await (database.select(database.groups)
          ..where((t) => t.number.equals(group)))
        .get();
    var professorsIds =
        professorsByGroup.map((group) => group.professorId).toList();
    yield* (database.select(database.professors)
          ..where((u) => u.id.isIn(professorsIds))
          ..orderBy([
            (t) {
              switch (order) {
                case 0:
                  return OrderingTerm(expression: t.name);
                case 1:
                  return OrderingTerm(
                      expression: t.name, mode: OrderingMode.desc);
                case 2:
                  return OrderingTerm(expression: t.rating);
                case 3:
                  return OrderingTerm(
                      expression: t.rating, mode: OrderingMode.desc);
                default:
                  return OrderingTerm(expression: t.name);
              }
            }
          ])
          ..limit(count))
        .watch()
        .asBroadcastStream();
  }
}
