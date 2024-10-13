import 'package:shared/shared.dart';

abstract interface class DatabaseProvider {
  // Future<void> addLike()
  Future<void> addUser(User user);
  Future<User?> getUserByUserId(int userId);
  Stream<List<Professor>> getAllProfessors(int count);
  Stream<List<ReviewWithUser>> getAllReviewsByProfessor(String professorId);
  Future<List<Professor>> findProfessorByName(String name, int count);
  Stream<List<ReviewWithProfessor>> getReviewsWithProfessor(int userId);
  Future<int> addReview(Review review);
  Future<bool> updateReview(Review review);
  Future<bool> updateUser(User user);
  Future<int> deleteReview(String reviewId);
  Future<void> addProfessor(Professor professor);
  Future<void> addRejectedReview(Review review);
  Future<List<Professor>> getOnceAllProfessors();
  Future<void> addProfessorToGroup(String id, String number, String professorId);
}
