import 'package:drift/drift.dart';
import 'package:poly_inside_server/database/database.dart';
import 'package:poly_inside_server/database/provider.dart';
import 'package:poly_inside_server/generated/protobufs/service.pb.dart';

class DatabaseProviderImpl implements DatabaseProvider {
  DatabaseProviderImpl({required this.database});

  final AppDatabase database;

  @override
  Stream<List<Professor>> findProfessorByName(String name) =>
      (database.select(database.professors)
            ..where((u) => u.name.contains(name)))
          .watch();

  @override
  Stream<List<Professor>> getAllProfessors() =>
      database.select(database.professors).watch();

  @override
  Stream<List<Review>> getAllReviewByUser(int userId) =>
      (database.select(database.reviews)..where((u) => u.userId.equals(userId)))
          .watch();

  @override
  Stream<List<Review>> getAllReviewsByProfessor(int professorId) =>
      (database.select(database.reviews)
            ..where((u) => u.professorId.equals(professorId)))
          .watch();

  @override
  Future<int> addReview(Review review) async =>
      await database.into(database.reviews).insert(
            ReviewsCompanion(
              id: Value('${review.userId}${review.date}'),
              rating: Value(review.rating),
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
  Future<User> getUserByUserId(int userId) async =>
      await (database.select(database.users)..where((u) => u.id.equals(userId)))
          .getSingle();

  @override
  Future<bool> updateReview(Review review) async =>
      await database.update(database.reviews).replace(
            ReviewsCompanion(
              id: Value(review.reviewId),
              rating: Value(review.rating),
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
  Future<int> deleteReview(String reviewId) async =>
      await (database.delete(database.reviews)
            ..where(
              (f) => f.id.equals(reviewId),
            ))
          .go();

  @override
  Future<void> addUser(User user) async {
    await database.into(database.users).insert(
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
  }
}
