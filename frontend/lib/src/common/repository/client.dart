import 'package:shared/shared.dart';

abstract class ClientRepository {
  ClientRepository();
  Future<void> addUser(User user);
  Future<User> getUserByUserId(int userId);
  Stream<Professor> getAllProfessors();
  Stream<Review> getAllReviewsByProfessor(int professorId);
  Stream<Review> getAllReviewByUser(int userId);
  Future<void> addReview(Review review);
  Future<void> updateReview(Review review);
  Future<void> updateUser(User user);
}