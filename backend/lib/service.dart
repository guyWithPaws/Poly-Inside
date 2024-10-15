// ignore: implementation_imports
import 'package:grpc/src/server/call.dart';
import 'package:l/l.dart';
import 'package:poly_inside_server/database/provider.dart';
import 'package:poly_inside_server/database/provider_impl.dart';
import 'package:poly_inside_server/validator/validator.dart';
import 'package:shared/shared.dart';

class GRPCService extends SearchServiceBase {
  GRPCService({required this.provider});

  final DatabaseProviderImpl provider;

  @override
  Future<AddReviewResponse> addReview(ServiceCall call, Review request) async {
    l.v('AddReview with ${request.toString()}');
    final passed = Filter.instance.check(request.comment);
    if (passed) {
      await provider.addReview(request);
    } else {
      await provider.addRejectedReview(request);
      l.v('Rejected review: ${request.comment}');
    }
    return AddReviewResponse()..passed = passed;
  }

  @override
  Stream<GetListProfessorResponse> getListProfessor(ServiceCall call, ListProfessorRequest request) async* {
    l.v('GetListProfessor');
    final professors = provider.getAllProfessors(request.count);
    await for (final list in professors) {
      yield GetListProfessorResponse(professors: list);
    }
  }

  @override
  Future<User> getProfile(ServiceCall call, UserInfoByUserIdRequest request) async {
    l.v('GetProfile with ${request.id}');
    final user = await provider.getUserByUserId(request.id);
    return user ?? User();
  }

  @override
  Stream<ReviewWithUserResponse> getReviewsByProfessorId(ServiceCall call, ReviewsByProfessorIdRequest request) async* {
    l.v('GetReviewsByProfessorId with ${request.id}');
    final stream = provider.getAllReviewsByProfessor(request.id);
    await for (final list in stream) {
      yield ReviewWithUserResponse(list: list);
    }
  }

  @override
  Future<UpdateProfileResponse> updateProfile(ServiceCall call, User request) async {
    l.v('EditProfile with ${request.toString()}');

    await provider.updateUser(request);
    return UpdateProfileResponse();
  }

  @override
  Future<UpdateReviewResponse> updateReview(ServiceCall call, Review request) async {
    l.v('EditReview with ${request.toString()}');
    await provider.updateReview(request);
    return UpdateReviewResponse();
  }

  @override
  Future<DeleteReviewResponse> deleteReview(ServiceCall call, DeleteReviewRequest request) async {
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

  @override
  Future<SearchResponse> searchProfessorByName(ServiceCall call, SearchRequest request) async {
    l.v('Search professor with name ${request.name}');
    final list = await provider.findProfessorByName(
      request.name,
      request.count,
    );
    return SearchResponse(professors: list);
  }

  @override
  Stream<ReviewWithProfessorResponse> getReviewWithProfessor(ServiceCall call, ReviewsByUserIdRequest request) async* {
    final stream = provider.getReviewsWithProfessor(request.id);
    l.v('Get reviews with professor with id: ${request.id}');
    await for (final list in stream) {
      yield ReviewWithProfessorResponse(list: list);
    }
  }

  @override
  Future<LikeResponse> addReviewReaction(ServiceCall call, Reaction request) async {
    if (request.type != 0) {
      await provider.addReaction(Reaction(
          id: request.id,
          userId: request.userId,
          professorId: request.professorId,
          reviewId: request.reviewId,
          type: request.type));
    } else {
      l.v('Delete reaction ${request.userId} ${request.professorId} ${request.reviewId}');
      await provider.deleteReaction(request.userId, request.professorId, request.reviewId);
    }
    return LikeResponse();
  }
}
