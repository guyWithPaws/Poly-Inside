//
//  Generated code. Do not modify.
//  source: protobuf/service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'service.pb.dart' as $0;

export 'service.pb.dart';

@$pb.GrpcServiceName('SearchService')
class SearchServiceClient extends $grpc.Client {
  static final _$addProfile = $grpc.ClientMethod<$0.User, $0.AddProfileResponse>(
      '/SearchService/AddProfile',
      ($0.User value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AddProfileResponse.fromBuffer(value));
  static final _$updateProfile = $grpc.ClientMethod<$0.User, $0.UpdateProfileResponse>(
      '/SearchService/UpdateProfile',
      ($0.User value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateProfileResponse.fromBuffer(value));
  static final _$getProfile = $grpc.ClientMethod<$0.UserInfoByUserIdRequest, $0.User>(
      '/SearchService/GetProfile',
      ($0.UserInfoByUserIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));
  static final _$getListProfessor = $grpc.ClientMethod<$0.ListProfessorRequest, $0.GetListProfessorResponse>(
      '/SearchService/GetListProfessor',
      ($0.ListProfessorRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetListProfessorResponse.fromBuffer(value));
  static final _$searchProfessorByName = $grpc.ClientMethod<$0.SearchRequest, $0.SearchResponse>(
      '/SearchService/SearchProfessorByName',
      ($0.SearchRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SearchResponse.fromBuffer(value));
  static final _$getReviewWithProfessor = $grpc.ClientMethod<$0.ReviewsByUserIdRequest, $0.ReviewWithProfessorResponse>(
      '/SearchService/GetReviewWithProfessor',
      ($0.ReviewsByUserIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ReviewWithProfessorResponse.fromBuffer(value));
  static final _$getListProfessorsByGroup =
      $grpc.ClientMethod<$0.ListProfessorsByGroupRequest, $0.ListProfessorsByGroupResponce>(
          '/SearchService/GetListProfessorsByGroup',
          ($0.ListProfessorsByGroupRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ListProfessorsByGroupResponce.fromBuffer(value));
  static final _$addReview = $grpc.ClientMethod<$0.Review, $0.AddReviewResponse>(
      '/SearchService/AddReview',
      ($0.Review value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AddReviewResponse.fromBuffer(value));
  static final _$updateReview = $grpc.ClientMethod<$0.Review, $0.UpdateReviewResponse>(
      '/SearchService/UpdateReview',
      ($0.Review value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateReviewResponse.fromBuffer(value));
  static final _$deleteReview = $grpc.ClientMethod<$0.DeleteReviewRequest, $0.DeleteReviewResponse>(
      '/SearchService/DeleteReview',
      ($0.DeleteReviewRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteReviewResponse.fromBuffer(value));
  static final _$getReviewsByProfessorId =
      $grpc.ClientMethod<$0.ReviewsByProfessorIdRequest, $0.ReviewWithUserResponse>(
          '/SearchService/GetReviewsByProfessorId',
          ($0.ReviewsByProfessorIdRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ReviewWithUserResponse.fromBuffer(value));
  static final _$addReviewReaction = $grpc.ClientMethod<$0.Reaction, $0.LikeResponse>(
      '/SearchService/AddReviewReaction',
      ($0.Reaction value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LikeResponse.fromBuffer(value));

  SearchServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options, $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AddProfileResponse> addProfile($0.User request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addProfile, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateProfileResponse> updateProfile($0.User request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateProfile, request, options: options);
  }

  $grpc.ResponseFuture<$0.User> getProfile($0.UserInfoByUserIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getProfile, request, options: options);
  }

  $grpc.ResponseStream<$0.GetListProfessorResponse> getListProfessor($0.ListProfessorRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getListProfessor, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.SearchResponse> searchProfessorByName($0.SearchRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchProfessorByName, request, options: options);
  }

  $grpc.ResponseStream<$0.ReviewWithProfessorResponse> getReviewWithProfessor($0.ReviewsByUserIdRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getReviewWithProfessor, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseStream<$0.ListProfessorsByGroupResponce> getListProfessorsByGroup(
      $0.ListProfessorsByGroupRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getListProfessorsByGroup, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.AddReviewResponse> addReview($0.Review request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addReview, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateReviewResponse> updateReview($0.Review request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateReview, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteReviewResponse> deleteReview($0.DeleteReviewRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteReview, request, options: options);
  }

  $grpc.ResponseStream<$0.ReviewWithUserResponse> getReviewsByProfessorId($0.ReviewsByProfessorIdRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getReviewsByProfessorId, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.LikeResponse> addReviewReaction($0.Reaction request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addReviewReaction, request, options: options);
  }
}

@$pb.GrpcServiceName('SearchService')
abstract class SearchServiceBase extends $grpc.Service {
  $core.String get $name => 'SearchService';

  SearchServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.User, $0.AddProfileResponse>(
        'AddProfile',
        addProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.User.fromBuffer(value),
        ($0.AddProfileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.User, $0.UpdateProfileResponse>(
        'UpdateProfile',
        updateProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.User.fromBuffer(value),
        ($0.UpdateProfileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserInfoByUserIdRequest, $0.User>(
        'GetProfile',
        getProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserInfoByUserIdRequest.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListProfessorRequest, $0.GetListProfessorResponse>(
        'GetListProfessor',
        getListProfessor_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.ListProfessorRequest.fromBuffer(value),
        ($0.GetListProfessorResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SearchRequest, $0.SearchResponse>(
        'SearchProfessorByName',
        searchProfessorByName_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SearchRequest.fromBuffer(value),
        ($0.SearchResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ReviewsByUserIdRequest, $0.ReviewWithProfessorResponse>(
        'GetReviewWithProfessor',
        getReviewWithProfessor_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.ReviewsByUserIdRequest.fromBuffer(value),
        ($0.ReviewWithProfessorResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListProfessorsByGroupRequest, $0.ListProfessorsByGroupResponce>(
        'GetListProfessorsByGroup',
        getListProfessorsByGroup_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.ListProfessorsByGroupRequest.fromBuffer(value),
        ($0.ListProfessorsByGroupResponce value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Review, $0.AddReviewResponse>(
        'AddReview',
        addReview_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Review.fromBuffer(value),
        ($0.AddReviewResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Review, $0.UpdateReviewResponse>(
        'UpdateReview',
        updateReview_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Review.fromBuffer(value),
        ($0.UpdateReviewResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteReviewRequest, $0.DeleteReviewResponse>(
        'DeleteReview',
        deleteReview_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteReviewRequest.fromBuffer(value),
        ($0.DeleteReviewResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ReviewsByProfessorIdRequest, $0.ReviewWithUserResponse>(
        'GetReviewsByProfessorId',
        getReviewsByProfessorId_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.ReviewsByProfessorIdRequest.fromBuffer(value),
        ($0.ReviewWithUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Reaction, $0.LikeResponse>(
        'AddReviewReaction',
        addReviewReaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Reaction.fromBuffer(value),
        ($0.LikeResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.AddProfileResponse> addProfile_Pre($grpc.ServiceCall call, $async.Future<$0.User> request) async {
    return addProfile(call, await request);
  }

  $async.Future<$0.UpdateProfileResponse> updateProfile_Pre(
      $grpc.ServiceCall call, $async.Future<$0.User> request) async {
    return updateProfile(call, await request);
  }

  $async.Future<$0.User> getProfile_Pre(
      $grpc.ServiceCall call, $async.Future<$0.UserInfoByUserIdRequest> request) async {
    return getProfile(call, await request);
  }

  $async.Stream<$0.GetListProfessorResponse> getListProfessor_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ListProfessorRequest> request) async* {
    yield* getListProfessor(call, await request);
  }

  $async.Future<$0.SearchResponse> searchProfessorByName_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SearchRequest> request) async {
    return searchProfessorByName(call, await request);
  }

  $async.Stream<$0.ReviewWithProfessorResponse> getReviewWithProfessor_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ReviewsByUserIdRequest> request) async* {
    yield* getReviewWithProfessor(call, await request);
  }

  $async.Stream<$0.ListProfessorsByGroupResponce> getListProfessorsByGroup_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ListProfessorsByGroupRequest> request) async* {
    yield* getListProfessorsByGroup(call, await request);
  }

  $async.Future<$0.AddReviewResponse> addReview_Pre($grpc.ServiceCall call, $async.Future<$0.Review> request) async {
    return addReview(call, await request);
  }

  $async.Future<$0.UpdateReviewResponse> updateReview_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Review> request) async {
    return updateReview(call, await request);
  }

  $async.Future<$0.DeleteReviewResponse> deleteReview_Pre(
      $grpc.ServiceCall call, $async.Future<$0.DeleteReviewRequest> request) async {
    return deleteReview(call, await request);
  }

  $async.Stream<$0.ReviewWithUserResponse> getReviewsByProfessorId_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ReviewsByProfessorIdRequest> request) async* {
    yield* getReviewsByProfessorId(call, await request);
  }

  $async.Future<$0.LikeResponse> addReviewReaction_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Reaction> request) async {
    return addReviewReaction(call, await request);
  }

  $async.Future<$0.AddProfileResponse> addProfile($grpc.ServiceCall call, $0.User request);
  $async.Future<$0.UpdateProfileResponse> updateProfile($grpc.ServiceCall call, $0.User request);
  $async.Future<$0.User> getProfile($grpc.ServiceCall call, $0.UserInfoByUserIdRequest request);
  $async.Stream<$0.GetListProfessorResponse> getListProfessor($grpc.ServiceCall call, $0.ListProfessorRequest request);
  $async.Future<$0.SearchResponse> searchProfessorByName($grpc.ServiceCall call, $0.SearchRequest request);
  $async.Stream<$0.ReviewWithProfessorResponse> getReviewWithProfessor(
      $grpc.ServiceCall call, $0.ReviewsByUserIdRequest request);
  $async.Stream<$0.ListProfessorsByGroupResponce> getListProfessorsByGroup(
      $grpc.ServiceCall call, $0.ListProfessorsByGroupRequest request);
  $async.Future<$0.AddReviewResponse> addReview($grpc.ServiceCall call, $0.Review request);
  $async.Future<$0.UpdateReviewResponse> updateReview($grpc.ServiceCall call, $0.Review request);
  $async.Future<$0.DeleteReviewResponse> deleteReview($grpc.ServiceCall call, $0.DeleteReviewRequest request);
  $async.Stream<$0.ReviewWithUserResponse> getReviewsByProfessorId(
      $grpc.ServiceCall call, $0.ReviewsByProfessorIdRequest request);
  $async.Future<$0.LikeResponse> addReviewReaction($grpc.ServiceCall call, $0.Reaction request);
}
