import 'package:shared/shared.dart';

abstract interface class UserProvider {
  // CRUD operations
  Future<void> addUser(User user);
  Future<User?> getUser(int userId);
  Future<bool> updateUser(User user);

  Future<void> updateUserName(int id, String newUserName);
  Future<void> updateGroupNumber(int id, String newGroupNumber);
  
  Stream<List<Group>> getGroups(int count, String number);
}

abstract interface class ProfessorProvider {
  // CRUD operations
  Future<void> addProfessor(Professor professor);

  Stream<List<Professor>> getAllProfessors(int count);
  Stream<List<Professor>> getProfessorsByGroup(int count, String group);

  Stream<List<Professor>> findProfessorByName(String name, int count);
  Future<List<Professor>> getOnceAllProfessors();
  Future<void> addProfessorToGroup(
      String id, String number, String professorId);
}

abstract interface class ReviewProvider {
  // CRUD operations
  Future<int> addReview(Review review);
  Future<bool> updateReview(Review review);
  Future<void> deleteReview(String reviewId);

  Future<Review> getReview(String id);

  Stream<List<ReviewWithProfessor>> getReviewsWithProfessor(int userId);
  Stream<List<ReviewWithUser>> getAllReviewsByProfessor(String professorId);
}

// ignore: one_member_abstracts
abstract interface class RejectedReviewProvider {
  // CRUD operations
  Future<void> addRejectedReview(Review review);
}

abstract interface class ReactionProvider {
  // CRUD operations
  Future<void> addReaction(Reaction reaction);
  Future<void> updateReaction(Reaction reaction);
  Future<void> deleteReaction(String id);
  Future<bool> isReactionExists(Reaction reaction);
  Future<Reaction> getReaction(String reactionId);
}

abstract interface class GroupProvider {
  Stream<List<String>> getGroupsNumers(String groupPattern, int count);
}
