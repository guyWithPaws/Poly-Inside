// ignore: implementation_imports
import 'package:grpc/src/server/call.dart';
import 'package:l/l.dart';
import 'package:poly_inside_server/database/provider_impl.dart';
import 'package:poly_inside_server/validator/validator.dart';
import 'package:shared/shared.dart';

class GRPCService extends SearchServiceBase {
  GRPCService({required this.provider});

  final DatabaseProviderImpl provider;

  @override
  Future<AddReviewResponse> addReview(ServiceCall call, Review request) async {
    l.v('Client with ip: ${call.remoteAddress!.address}');

    final passed = Filter.instance.check(request.comment);
    if (passed) {
      await provider.addReview(request);
      l.v('Add review with id: ${request.id}');
    } else {
      await provider.addRejectedReview(request);
      l.v('Add rejected review with id: ${request.id}}');
    }
    return AddReviewResponse()..passed = passed;
  }

  @override
  Stream<GetListProfessorResponse> getListProfessor(
      ServiceCall call, ListProfessorRequest request) async* {
    l
      ..v('Client with ip: ${call.remoteAddress!.address}')
      ..v('Get list of a professors');
    final professors = provider.getAllProfessors(request.count);
    await for (final list in professors) {
      yield GetListProfessorResponse(professors: list);
    }
  }

  @override
  Future<User> getProfile(
      ServiceCall call, UserInfoByUserIdRequest request) async {
    l
      ..v('Client with ip: ${call.remoteAddress!.address}')
      ..v('GetProfile with ${request.id}');
    final user = await provider.getUserByUserId(request.id);
    return user ?? User();
  }

  @override
  Stream<ReviewWithUserResponse> getReviewsByProfessorId(
      ServiceCall call, ReviewsByProfessorIdRequest request) async* {
    l
      ..v('Client with ip: ${call.remoteAddress!.address}')
      ..v('GetReviewsByProfessorId with ${request.id}');
    final stream = provider.getAllReviewsByProfessor(request.id);
    await for (final list in stream) {
      yield ReviewWithUserResponse(list: list);
    }
  }

  @override
  Future<UpdateProfileResponse> updateProfile(
      ServiceCall call, User request) async {
    l
      ..v('Client with ip: ${call.remoteAddress!.address}')
      ..v('Update profile; id: ${request.id}, name: ${request.name}');

    await provider.updateUser(request);
    return UpdateProfileResponse();
  }

  @override
  Future<UpdateReviewResponse> updateReview(
      ServiceCall call, Review request) async {
    l
      ..v('Client with ip: ${call.remoteAddress!.address}')
      ..v('Update Review with id: ${request.id}');
    await provider.updateReview(request);
    return UpdateReviewResponse();
  }

  @override
  Future<DeleteReviewResponse> deleteReview(
      ServiceCall call, DeleteReviewRequest request) async {
    l
      ..v('Client with ip: ${call.remoteAddress!.address}')
      ..v('DeleteReview with id: ${request.reviewId}');

    await provider.deleteReview(request.reviewId);
    return DeleteReviewResponse();
  }

  @override
  Future<AddProfileResponse> addProfile(ServiceCall call, User request) async {
    l
      ..v('Client with ip: ${call.remoteAddress!.address}')
      ..v('Add profile with id: ${request.id}; name: ${request.name}');

    await provider.addUser(request);
    return AddProfileResponse();
  }

  @override
  Stream<FindProfessorResponse> searchProfessorByName(
      ServiceCall call, SearchRequest request) async* {
    l
      ..v('Client with ip: ${call.remoteAddress!.address}')
      ..v('Search professor with name: ${request.name}');
    final data = provider.findProfessorByName(
      request.name,
      request.count,
    );
    await for (final list in data) {
      yield FindProfessorResponse(professors: list);
    }
  }

  @override
  Stream<ReviewWithProfessorResponse> getReviewWithProfessor(
      ServiceCall call, ReviewsByUserIdRequest request) async* {
    final stream = provider.getReviewsWithProfessor(request.id);
    l
      ..v('Client with ip: ${call.remoteAddress!.address}')
      ..v('Get reviews with professor with id: ${request.id}');
    await for (final list in stream) {
      yield ReviewWithProfessorResponse(list: list);
    }
  }

  // @override
  // Future<LikeResponse> addReviewReaction(
  //     ServiceCall call, Reaction request) async {
  //   if (request.type == 2) {
  //     //var reaction = await provider.getReaction(request.id);
  //     await provider.deleteReaction(
  //         request.userId, request.professorId, request.reviewId);
  //     var review = await provider.getReview(request.reviewId);
  //     if (request.type == 1) {
  //       review.likes -= 1;
  //     } else {
  //       review.dislikes -= 1;
  //     }
  //     await provider.updateReview(review);
  //     // ignore: lines_longer_than_80_chars
  //     l.v('Delete reaction with userId: ${request.userId} professorId: ${request.professorId} reviewId: ${request.reviewId}');
  //   } else {
  //     final response = await provider.isReactionExists(Reaction(
  //       userId: request.userId,
  //       professorId: request.professorId,
  //       reviewId: request.reviewId,
  //     ));
  //     var review = await provider.getReview(request.reviewId);
  //     if (request.type == 1 && response) {
  //       review
  //         ..likes += 1
  //         ..dislikes -= 1;
  //     } else if (request.type == 0 && response) {
  //       review
  //         ..likes -= 1
  //         ..dislikes += 1;
  //     }

  //     if (response) {
  //       await provider.updateReaction(Reaction(
  //           id: request.id,
  //           userId: request.userId,
  //           professorId: request.professorId,
  //           reviewId: request.reviewId,
  //           type: request.type));

  //       await provider.updateReview(review);
  //       // ignore: lines_longer_than_80_chars
  //       l.v('Update reaction with id ${request.id} to ${request.type == 1 ? 'like' : 'dislike'}');
  //     } else {
  //       await provider.addReaction(Reaction(
  //           id: request.id,
  //           userId: request.userId,
  //           professorId: request.professorId,
  //           reviewId: request.reviewId,
  //           type: request.type));
  //       l.v('Add ${request.type == 0 ? 'dislike' : 'like'} reaction');
  //       await provider.updateReview(review);
  //     }
  //   }
  //   return LikeResponse();
  // }

  @override
  Stream<ListProfessorsByGroupResponce> getListProfessorsByGroup(
      ServiceCall call, ListProfessorsByGroupRequest request) async* {
    final professors =
        provider.getProfessorsByGroup(request.count, request.group);
    l
      ..v('Client with ip: ${call.remoteAddress!.address}')
      ..v('Get professors by group: ${request.group}');
    await for (final list in professors) {
      yield ListProfessorsByGroupResponce(professors: list);
    }
  }

  @override
  Future<ReactionResponse> addReaction(
      ServiceCall call, Reaction request) async {
    await provider.addReaction(request);
    l.v('Add reaction with id: ${request.id}');
    return ReactionResponse();
  }

  @override
  Future<ReactionResponse> deleteReaction(
      ServiceCall call, DeleteReactionRequest request) async {
    await provider.deleteReaction(request.id);
    l.v('Delete reaction with id: ${request.id}');
    return ReactionResponse();
  }

  @override
  Future<ReactionResponse> updateReaction(
      ServiceCall call, Reaction request) async {
    await provider.updateReaction(request);
    // ignore: lines_longer_than_80_chars
    l.v('Update reaction with id: ${request.id} to ${request.type == 1 ? 'like' : 'dislike'}');
    return ReactionResponse();
  }
}
