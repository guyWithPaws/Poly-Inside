import 'package:shared/shared.dart';

abstract class ClientRepository {
  ClientRepository();
  Future<void> addUser(User user);
  Future<User> getUserByUserId(int userId);
  Stream<GetListProfessorResponse> getAllProfessors(int i);
  Stream<ListProfessorsByGroupResponce>
      getProfessorsByGroup(int count, String group);
  Stream<ReviewWithUserResponse> getAllReviewsByProfessor(
      String professorId);
  Future<bool> addReview(Review review);
  Future<void> updateReview(Review review);
  Future<void> deleteReview(String reviewId);
  Future<void> updateUser(User user);
  Stream<FindProfessorResponse> findProfessorByName(
      String name, int count);
  Stream<ReviewWithProfessorResponse>
      getReviewsWithProfessor(int userId);
  Future<void> addReaction(Reaction reaction);
  Future<void> deleteReaction(String id);
  Future<void> updateReaction(Reaction reaction);
  Stream<GetListGroupsResponce> findGroup(
      int count, String number);
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
