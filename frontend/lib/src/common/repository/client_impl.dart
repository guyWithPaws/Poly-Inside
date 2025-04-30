import 'package:poly_inside/src/common/repository/client.dart';
import 'package:shared/shared.dart';
// ignore: depend_on_referenced_packages

class ClientRepositoryImpl implements ClientRepository {
  final SearchServiceClient client;
  ClientRepositoryImpl({required this.client});

  @override
  Future<bool> addReview(Review review) async {
    final responce = await client.addReview(review);
    return responce.passed;
  }

  @override
  Future<void> addUser(User user) async => await client.addProfile(user);

  @override
  Stream<GetListProfessorResponse> getAllProfessors(int count) =>
      client.getListProfessor(
        ListProfessorRequest(count: count),
      );

  @override
  Stream<ReviewWithUserResponse> getAllReviewsByProfessor(String professorId) =>
      client.getReviewsByProfessorId(
          ReviewsByProfessorIdRequest()..id = professorId);

  @override
  Future<User> getUserByUserId(int userId) =>
      client.getProfile(UserInfoByUserIdRequest()..id = userId);

  @override
  Future<void> updateReview(Review review) => client.updateReview(review);

  @override
  Future<void> updateUser(User user) => client.updateProfile(user);

  @override
  Stream<FindProfessorResponse> findProfessorByName(String name, int count) =>
      client.searchProfessorByName(SearchRequest()
        ..name = name
        ..count = count);

  @override
  Stream<ReviewWithProfessorResponse> getReviewsWithProfessor(int userId) =>
      client.getReviewWithProfessor(ReviewsByUserIdRequest(id: userId));

  @override
  Future<void> deleteReview(String reviewId) async => client.deleteReview(
        DeleteReviewRequest(reviewId: reviewId),
      );

  @override
  Future<void> addReaction(Reaction reaction) async =>
      await client.addReaction(reaction);

  @override
  Future<void> deleteReaction(String id) async =>
      await client.deleteReaction(DeleteReactionRequest(id: id));

  @override
  Stream<ListProfessorsByGroupResponce> getProfessorsByGroup(
          int count, String group) =>
      client.getListProfessorsByGroup(
          ListProfessorsByGroupRequest(count: count, group: group));

  @override
  Future<void> updateReaction(Reaction reaction) async =>
      await client.updateReaction(reaction);

  @override
  Stream<GetListGroupsResponce> findGroup(int count, String number) =>
      client.getListGroups(GroupListRequest(count: count, group: number));

  @override
  Future<void> updateGroupNumber(int userId, String newGroupNumber) async {
    await client.changeGroupNumber(ChangeGroupNumberRequest(
        userId: userId, newGroupNumber: newGroupNumber));
  }

  @override
  Future<void> updateUserName(int userId, String newUserName) async =>
      await client.updateUserName(
        UpdateUserNameRequest(id: userId, newUserName: newUserName),
      );
}
