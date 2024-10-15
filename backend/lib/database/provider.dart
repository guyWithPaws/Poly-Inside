import 'package:shared/shared.dart';

abstract interface class UserProvider {
  // CRUD operations
  Future<void> addUser(User user);
  Future<bool> updateUser(User user);

  Future<User?> getUserByUserId(int userId);
}

abstract class ProfessorProvider {
  // CRUD operations
  Future<void> addProfessor(Professor professor);

  Stream<List<Professor>> getAllProfessors(int count);
  Stream<List<ReviewWithUser>> getAllReviewsByProfessor(String professorId);
  Future<List<Professor>> findProfessorByName(String name, int count);
  Future<List<Professor>> getOnceAllProfessors();
  Future<void> addProfessorToGroup(
      String id, String number, String professorId);
}

abstract class ReviewProvider {
  // CRUD operations
  Future<int> addReview(Review review);
  Future<bool> updateReview(Review review);
  Future<int> deleteReview(String reviewId);

  Stream<List<ReviewWithProfessor>> getReviewsWithProfessor(int userId);
}

abstract class RejectedReviewProvider {
  // CRUD operations
  Future<void> addRejectedReview(Review review);
}

abstract class ReactionProvider {
  // CRUD operations
  Future<void> addReaction(Reaction reaction);
  Future<void> deleteReaction(
      int userId, String professorId, String reviewId);
}
