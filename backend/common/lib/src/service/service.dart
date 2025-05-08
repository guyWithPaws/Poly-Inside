import 'package:common/common.dart';
import 'package:grpc/src/server/call.dart';
import 'package:shared/shared.dart';
import 'package:talker/talker.dart';

class GRPCService extends SearchServiceBase {
  final DatabaseProviderImpl provider;

  final FileDataLoader dataLoader = FileDataLoader();
  final TextProcessor textProcessor = TextProcessor();
  late final Filter filter;
  final Talker talker;

  GRPCService({required this.provider, required this.talker});

  @override
  Future<AddReviewResponse> addReview(ServiceCall call, Review request) async {
    await provider.addReview(request);

    talker.log('Add review with id: ${request.id}');
    return AddReviewResponse()..passed = true;
  }

  @override
  Stream<GetListProfessorResponse> getListProfessor(
      ServiceCall call, ListProfessorRequest request) async* {
    talker.log('Get list of a professors');
    final professors = provider.getAllProfessors(request.count);
    await for (final list in professors) {
      yield GetListProfessorResponse(professors: list);
    }
  }

  @override
  Future<User> getProfile(
      ServiceCall call, UserInfoByUserIdRequest request) async {
    talker.log('GetProfile with ${request.id}');
    final user = await provider.getUserByUserId(request.id);
    return user ?? User();
  }

  @override
  Stream<ReviewWithUserResponse> getReviewsByProfessorId(
      ServiceCall call, ReviewsByProfessorIdRequest request) async* {
    talker.log('GetReviewsByProfessorId with ${request.id}');
    final stream = provider.getAllReviewsByProfessor(request.id);
    await for (final list in stream) {
      yield ReviewWithUserResponse(list: list);
    }
  }

  @override
  Future<UpdateProfileResponse> updateProfile(
      ServiceCall call, User request) async {
    talker.log('Update profile; id: ${request.id}, name: ${request.name}');

    await provider.updateUser(request);
    return UpdateProfileResponse();
  }

  @override
  Future<UpdateReviewResponse> updateReview(
      ServiceCall call, Review request) async {
    talker.log('Update Review with id: ${request.id}');
    await provider.updateReview(request);
    return UpdateReviewResponse();
  }

  @override
  Future<DeleteReviewResponse> deleteReview(
      ServiceCall call, DeleteReviewRequest request) async {
    talker.log('DeleteReview with id: ${request.reviewId}');

    await provider.deleteReview(request.reviewId);
    return DeleteReviewResponse();
  }

  @override
  Future<AddProfileResponse> addProfile(ServiceCall call, User request) async {
    talker.log('Add profile with id: ${request.id}; name: ${request.name}');

    await provider.addUser(request);
    return AddProfileResponse();
  }

  @override
  Stream<FindProfessorResponse> searchProfessorByName(
      ServiceCall call, SearchRequest request) async* {
    talker.log('Search professor with name: ${request.name}');
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
    talker.log('Get reviews with professor with id: ${request.id}');
    await for (final list in stream) {
      yield ReviewWithProfessorResponse(list: list);
    }
  }

  @override
  Stream<ListProfessorsByGroupResponce> getListProfessorsByGroup(
      ServiceCall call, ListProfessorsByGroupRequest request) async* {
    final professors =
        provider.getProfessorsByGroup(request.count, request.group);
    talker.log('Get professors by group: ${request.group}');
    await for (final list in professors) {
      yield ListProfessorsByGroupResponce(professors: list);
    }
  }

  @override
  Future<ReactionResponse> addReaction(
      ServiceCall call, Reaction request) async {
    await provider.addReaction(request);
    talker.log('Add reaction with id: ${request.id}');
    return ReactionResponse();
  }

  @override
  Future<ReactionResponse> deleteReaction(
      ServiceCall call, DeleteReactionRequest request) async {
    await provider.deleteReaction(request.id);
    talker.log('Delete reaction with id: ${request.id}');
    return ReactionResponse();
  }

  @override
  Future<ReactionResponse> updateReaction(
      ServiceCall call, Reaction request) async {
    await provider.updateReaction(request);
    talker.log(
        'Update reaction with id: ${request.id} to ${request.type == 1 ? 'like' : 'dislike'}');
    return ReactionResponse();
  }

  @override
  Stream<GetListGroupsResponce> getListGroups(
      ServiceCall call, GroupListRequest request) async* {
    talker.log('GetListGroups ${request.group} count: ${request.count}');
    final data = provider.getGroups(request.count, request.group);
    await for (final group in data) {
      yield GetListGroupsResponce(groups: group);
    }
  }

  @override
  Future<ChangeGroupNumberResponce> changeGroupNumber(
      ServiceCall call, ChangeGroupNumberRequest request) async {
    talker.log(
        'Change group number ${request.userId} to ${request.newGroupNumber}');
    await provider.changeGroupNumber(request.userId, request.newGroupNumber);
    return ChangeGroupNumberResponce();
  }

  @override
  Stream<GroupsNumbersResponce> getGroupsNumbers(
      ServiceCall call, GetGroupsNumbersRequest request) {
    throw UnimplementedError();
  }

  @override
  Future<UpdateUserNameResponce> updateUserName(
      ServiceCall call, UpdateUserNameRequest request) async {
    talker.log('Update user name ${request.id} to ${request.newUserName}');
    await provider.updateUserName(request.id, request.newUserName);
    return UpdateUserNameResponce();
  }
}
