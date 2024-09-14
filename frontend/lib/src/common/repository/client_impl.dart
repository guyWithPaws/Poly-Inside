import 'package:poly_inside/src/common/repository/client.dart';
import 'package:shared/shared.dart';

class ClientRepositoryImpl implements ClientRepository {
  final SearchServiceClient client;
  ClientRepositoryImpl({required this.client});

  @override
  Future<void> addReview(Review review) => client.addReview(review);

  @override
  Future<void> addUser(User user) => client.addProfile(user);

  @override
  Stream<Professor> getAllProfessors() =>
      client.getListProfessor(ListProfessorRequest());

  @override
  Stream<Review> getAllReviewByUser(int userId) =>
      client.getReviewsByUserId(ReviewsByUserIdRequest()..id = userId);

  @override
  Stream<Review> getAllReviewsByProfessor(int professorId) => client
      .getReviewsByProfessorId(ReviewsByProfessorIdRequest()..id = professorId);

  @override
  Future<User> getUserByUserId(int userId) =>
      client.getProfile(UserInfoByUserIdRequest()..id = userId);

  @override
  Future<void> updateReview(Review review) => client.updateReview(review);

  @override
  Future<void> updateUser(User user) => client.updateProfile(user);
}