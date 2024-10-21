import 'package:shared/shared.dart';

abstract class ClientRepository {
  ClientRepository();
  Future<void> addUser(User user);
  Future<User> getUserByUserId(int userId);
  Stream<GetListProfessorResponse> getAllProfessors(int i);
  Stream<ListProfessorsByGroupResponce> getProfessorsByGroup(
      int count, String group, int order);
  Stream<ReviewWithUserResponse> getAllReviewsByProfessor(String professorId);
  Future<bool> addReview(Review review);
  Future<void> updateReview(Review review);
  Future<void> deleteReview(String reviewId);
  Future<void> updateUser(User user);
  Future<SearchResponse> findProfessorByName(String name, int count);
  Stream<ReviewWithProfessorResponse> getReviewsWithProfessor(int userId);
  Future<void> addReaction(
      int userId, String professorId, String reviewId, bool liked);
  Future<void> deleteReaction(Reaction reaction);
}

abstract class UserRepository {
  // CRUD's operations
  Future<void> addUser(User user);
  Future<void> updateUser(User user);
}

abstract class ProfessorRepository {}

abstract class ReviewRepository {
  // CRUD's operations
  Future<bool> addReview(Review review);
  Future<void> updateReview(Review review);
  Future<void> deleteReview(String reviewId);
}
