import 'package:poly_inside/src/common/repository/client.dart';
import 'package:shared/shared.dart';

class ClientRepositoryImpl implements ClientRepository {
  final SearchServiceClient client;
  ClientRepositoryImpl({required this.client});

  @override
  Future<bool> addReview(Review review) async {
    final responce = await client.addReview(review);
    return responce.passed;
  }

  @override
  Future<void> addUser(User user) => client.addProfile(user);

  @override
  Stream<GetListProfessorResponse> getAllProfessors(int count) => client.getListProfessor(
        ListProfessorRequest(count: count),
      );

  @override
  Stream<ReviewWithUserResponse> getAllReviewsByProfessor(String professorId) =>
      client.getReviewsByProfessorId(ReviewsByProfessorIdRequest()..id = professorId);

  @override
  Future<User> getUserByUserId(int userId) => client.getProfile(UserInfoByUserIdRequest()..id = userId);

  @override
  Future<void> updateReview(Review review) => client.updateReview(review);

  @override
  Future<void> updateUser(User user) => client.updateProfile(user);

  @override
  Future<SearchResponse> findProfessorByName(String name, int count) => client.searchProfessorByName(SearchRequest()
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
  Future<void> addReaction(int userId, String professorId, String reviewId, bool liked) {
    // TODO: implement addReaction
    throw UnimplementedError();
  }

  // @override
  // Future<void> addReaction(Reaction reaction) =>
  //     client.likeReview(
  //       LikeRequest(
  //           userId: userId,
  //           professorId: professorId,
  //           reviewId: reviewId,
  //           type: liked ? 1 : 0),
  //     );
}
