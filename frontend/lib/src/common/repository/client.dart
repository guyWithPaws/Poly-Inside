import 'package:shared/shared.dart';

abstract class ClientRepository {
  ClientRepository();
  Future<void> addUser(User user);
  Future<User> getUserByUserId(int userId);
  Stream<GetListProfessorResponse> getAllProfessors(int i);
  Stream<ReviewStream> getAllReviewsByProfessor(String professorId);
  Future<List<Review>> getAllReviewByUser(int userId);
  Future<bool> addReview(Review review);
  Future<void> updateReview(Review review);
  Future<void> updateUser(User user);
  Future<SearchResponse> findProfessorByName(String name, int count);
  Stream<ReviewWithProfessorResponse> getReviewsWithProfessor(int userId);
}
