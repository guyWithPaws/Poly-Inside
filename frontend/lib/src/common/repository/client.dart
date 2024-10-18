import 'package:shared/shared.dart';

abstract class ClientRepository {
  ClientRepository();
  Future<void> addUser(User user);
  Future<User> getUserByUserId(int userId);
  Stream<GetListProfessorResponse> getAllProfessors(int i);
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
