// ignore: implementation_imports
import 'package:grpc/src/server/call.dart';
import 'package:l/l.dart';
import 'package:poly_inside_server/database/provider.dart';
import 'package:poly_inside_server/generated/protobufs/service.pbgrpc.dart';
import 'package:poly_inside_server/validator/validator.dart';

class GRPCService extends SearchServiceBase {
  GRPCService({required this.provider});

  final DatabaseProvider provider;

  @override
  Future<AddReviewResponse> addReview(ServiceCall call, Review request) async {
    l.v('AddReview with ${request.toString()}');
    final passed = Filter.instance.check(request.comment);
    if (passed) {
      await provider.addReview(request);
    } else {
      l.v('Rejected review: ${request.comment}');
    }
    return AddReviewResponse()..passed = passed;
  }

  @override
  Stream<Professor> getListProfessor(
      ServiceCall call, ListProfessorRequest request) async* {
    l.v('GetListProfessor');
    l.v(call.remoteAddress.toString());
    final stream = provider.getAllProfessors();
    await for (final list in stream) {
      for (final professor in list) {
        yield Professor()
          ..id = professor.id
          ..avatar = professor.avatar
          ..name = professor.name;
      }
    }
  }

  @override
  Future<User> getProfile(
      ServiceCall call, UserInfoByUserIdRequest request) async {
    l.v('GetProfile with ${request.id}');

    return await provider.getUserByUserId(request.id);
  }

  @override
  Stream<Review> getReviewsByProfessorId(
      ServiceCall call, ReviewsByProfessorIdRequest request) async* {
    l.v('GetReviewsByProfessorId with ${request.id}');
    final stream = provider.getAllReviewsByProfessor(request.id);
    await for (final list in stream) {
      for (final e in list) {
        yield e;
      }
    }
  }

  @override
  Stream<Review> getReviewsByUserId(
      ServiceCall call, ReviewsByUserIdRequest request) async* {
    l.v('GetReviewsByUserId with ${request.id}');

    final stream = provider.getAllReviewByUser(request.id);
    await for (final list in stream) {
      for (final e in list) {
        yield e;
      }
    }
  }

  @override
  Future<UpdateProfileResponse> updateProfile(
      ServiceCall call, User request) async {
    l.v('EditProfile with ${request.toString()}');

    await provider.updateUser(request);
    return UpdateProfileResponse();
  }

  @override
  Future<UpdateReviewResponse> updateReview(
      ServiceCall call, Review request) async {
    l.v('EditReview with ${request.toString()}');
    await provider.updateReview(request);
    return UpdateReviewResponse();
  }

  @override
  Future<DeleteReviewResponse> deleteReview(
      ServiceCall call, DeleteReviewRequest request) async {
    l.v('DeleteReview with ${request.toString()}');

    await provider.deleteReview(request.reviewId);
    return DeleteReviewResponse();
  }

  @override
  Future<AddProfileResponse> addProfile(ServiceCall call, User request) async {
    l.v('AddProfile with ${request.toString()}');

    await provider.addUser(request);
    return AddProfileResponse();
  }
}
