import 'package:poly_inside_server/generated/protobufs/service.pb.dart';

abstract interface class DatabaseProvider {
  Future<void> addUser(User user);
  Future<User> getUserByUserId(int userId);
  Stream<List<Professor>> getAllProfessors();
  Stream<List<Review>> getAllReviewsByProfessor(int professorId);
  Stream<List<Professor>> findProfessorByName(String name);
  Stream<List<Review>> getAllReviewByUser(int userId);
  Future<int> addReview(Review review);
  Future<bool> updateReview(Review review);
  Future<bool> updateUser(User user);
  Future<int> deleteReview(String reviewId);
}
