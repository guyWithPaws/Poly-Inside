import 'package:shared/shared.dart';

abstract class ClientRepository {
  ClientRepository();
  Future<void> addUser(User user);
  Future<User> getUserByUserId(int userId);
  Future<GetListProfessorResponse> getAllProfessors(int i);
  Future<List<Review>> getAllReviewsByProfessor(String professorId);
  Future<List<Review>> getAllReviewByUser(int userId);
  Future<void> addReview(Review review);
  Future<void> updateReview(Review review);
  Future<void> updateUser(User user);
  Future<SearchResponse> findProfessorByName(String name, int count);
}
