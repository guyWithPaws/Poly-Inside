// ignore: implementation_imports
// ignore_for_file: lines_longer_than_80_chars

// ignore: implementation_imports
import 'package:grpc/src/server/call.dart';
import 'package:l/l.dart';
import '../provider/provider_impl.dart';
import '../validator/validator.dart';
import 'package:shared/shared.dart';

class GRPCService extends SearchServiceBase {
  final DatabaseProviderImpl provider;

  final FileDataLoader dataLoader = FileDataLoader();
  final TextProcessor textProcessor = TextProcessor();
  late final Filter filter;

  GRPCService({required this.provider}) {
    // filter = Filter(dataLoader: dataLoader, textProcessor: textProcessor);
  }

  @override
  Future<AddReviewResponse> addReview(ServiceCall call, Review request) async {
    l.v('Client with ip: ${call.remoteAddress!.address}');

    // final passed = filter.check(request.comment);
    await provider.addReview(request);
    l.v('Add review with id: ${request.id}');
    // if (passed) {

    // } else {
    //   await provider.addRejectedReview(request);
    //   l.v('Add rejected review with id: ${request.id}}');
    // }
    return AddReviewResponse()..passed = true;
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
    l.v('Update reaction with id: ${request.id} to ${request.type == 1 ? 'like' : 'dislike'}');
    return ReactionResponse();
  }

  @override
  Stream<GetListGroupsResponce> getListGroups(
      ServiceCall call, GroupListRequest request) async* {
    final data = provider.getGroups(request.count, request.group);
    await for (final group in data) {
      yield GetListGroupsResponce(groups: group);
    }
  }

  @override
  Future<ChangeGroupNumberResponce> changeGroupNumber(
      ServiceCall call, ChangeGroupNumberRequest request) {
    // TODO: implement changeGroupNumber
    throw UnimplementedError();
  }

  @override
  Stream<GroupsNumbersResponce> getGroupsNumbers(
      ServiceCall call, GetGroupsNumbersRequest request) {
    // TODO: implement getGroupsNumbers
    throw UnimplementedError();
  }

  @override
  Future<UpdateUserNameResponce> updateUserName(
      ServiceCall call, UpdateUserNameRequest request) {
    // TODO: implement updateUserName
    throw UnimplementedError();
  }
}
