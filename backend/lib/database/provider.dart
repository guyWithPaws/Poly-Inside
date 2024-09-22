import 'package:shared/shared.dart';

abstract interface class DatabaseProvider {
  Future<void> addUser(User user);
  Future<User?> getUserByUserId(int userId);
  Stream<List<Professor>> getAllProfessors(int count);
  Future<List<Review>> getAllReviewsByProfessor(String professorId);
  Future<List<Professor>> findProfessorByName(String name, int count);
  Future<List<Review>> getAllReviewByUser(int userId);
  Future<int> addReview(Review review);
  Future<bool> updateReview(Review review);
  Future<bool> updateUser(User user);
  Future<int> deleteReview(String reviewId);
  Future<void> addProfessor(Professor professor);
  Future<void> addRejectedReview(Review review);
  Future<List<Professor>> getOnceAllProfessors();
}
