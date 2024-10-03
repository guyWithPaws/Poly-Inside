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
  Stream<GetListProfessorResponse> getAllProfessors(int count) =>
      client.getListProfessor(ListProfessorRequest(count: count));

  @override
  Future<List<Review>> getAllReviewByUser(int userId) async {
    final response = await client.getReviewsByUserId(ReviewsByUserIdRequest()..id = userId);
    return response.reviews;
  }

  @override
  Stream<ReviewStream> getAllReviewsByProfessor(String professorId) =>
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
  Stream<ReviewWithProfessorResponse> getReviewsWithProfessor() {
    // TODO: implement getReviewsWithProfessor
    throw UnimplementedError();
  }
}
