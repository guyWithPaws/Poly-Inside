import 'package:shared/shared.dart';

abstract class UserProvider {
  // CRUD operations
  Future<void> addUser(User user);
  Future<bool> updateUser(User user);

  Future<User?> getUserByUserId(int userId);
  Stream<List<GroupNumber>> getGroups(int count, String number);
}

abstract class ProfessorProvider {
  // CRUD operations
  Future<void> addProfessor(Professor professor);

  Stream<List<Professor>> getAllProfessors(int count);
  Stream<List<Professor>> getProfessorsByGroup(int count, String group);

  Stream<List<Professor>> findProfessorByName(String name, int count);
  Future<List<Professor>> getOnceAllProfessors();
  Future<void> addProfessorToGroup(
      String id, String number, String professorId);
}

abstract class GroupProvider {
  Future<void> changeGroupNumber(int userId, String newGroupNumber);
  Future<void> fillGroupsNumbers();
}

abstract class ReviewProvider {
  // CRUD operations
  Future<int> addReview(Review review);
  Future<bool> updateReview(Review review);
  Future<void> deleteReview(String reviewId);

  Future<Review> getReview(String id);

  Stream<List<ReviewWithProfessor>> getReviewsWithProfessor(int userId);
  Stream<List<ReviewWithUser>> getAllReviewsByProfessor(String professorId);
}

// ignore: one_member_abstracts
abstract class RejectedReviewProvider {
  // CRUD operations
  Future<void> addRejectedReview(Review review);
}

abstract class ReactionProvider {
  // CRUD operations
  Future<void> addReaction(Reaction reaction);
  Future<void> updateReaction(Reaction reaction);
  Future<void> deleteReaction(String id);
  Future<bool> isReactionExists(Reaction reaction);
  Future<Reaction> getReaction(String reactionId);
}
