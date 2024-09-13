//
//  Generated code. Do not modify.
//  source: api.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'api.pb.dart' as $0;
import 'api.pbjson.dart';

export 'api.pb.dart';

abstract class SearchServiceBase extends $pb.GeneratedService {
  $async.Future<$0.AddProfileResponse> addProfile($pb.ServerContext ctx, $0.User request);
  $async.Future<$0.UpdateProfileResponse> updateProfile($pb.ServerContext ctx, $0.User request);
  $async.Future<$0.User> getProfile($pb.ServerContext ctx, $0.UserInfoByUserIdRequest request);
  $async.Future<$0.Professor> getListProfessor($pb.ServerContext ctx, $0.ListProfessorRequest request);
  $async.Future<$0.AddReviewResponse> addReview($pb.ServerContext ctx, $0.Review request);
  $async.Future<$0.Review> getReviewsByProfessorId($pb.ServerContext ctx, $0.ReviewsByProfessorIdRequest request);
  $async.Future<$0.Review> getReviewsByUserId($pb.ServerContext ctx, $0.ReviewsByUserIdRequest request);
  $async.Future<$0.UpdateReviewResponse> updateReview($pb.ServerContext ctx, $0.Review request);
  $async.Future<$0.DeleteReviewResponse> deleteReview($pb.ServerContext ctx, $0.DeleteReviewRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'AddProfile': return $0.User();
      case 'UpdateProfile': return $0.User();
      case 'GetProfile': return $0.UserInfoByUserIdRequest();
      case 'GetListProfessor': return $0.ListProfessorRequest();
      case 'AddReview': return $0.Review();
      case 'GetReviewsByProfessorId': return $0.ReviewsByProfessorIdRequest();
      case 'GetReviewsByUserId': return $0.ReviewsByUserIdRequest();
      case 'UpdateReview': return $0.Review();
      case 'DeleteReview': return $0.DeleteReviewRequest();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'AddProfile': return this.addProfile(ctx, request as $0.User);
      case 'UpdateProfile': return this.updateProfile(ctx, request as $0.User);
      case 'GetProfile': return this.getProfile(ctx, request as $0.UserInfoByUserIdRequest);
      case 'GetListProfessor': return this.getListProfessor(ctx, request as $0.ListProfessorRequest);
      case 'AddReview': return this.addReview(ctx, request as $0.Review);
      case 'GetReviewsByProfessorId': return this.getReviewsByProfessorId(ctx, request as $0.ReviewsByProfessorIdRequest);
      case 'GetReviewsByUserId': return this.getReviewsByUserId(ctx, request as $0.ReviewsByUserIdRequest);
      case 'UpdateReview': return this.updateReview(ctx, request as $0.Review);
      case 'DeleteReview': return this.deleteReview(ctx, request as $0.DeleteReviewRequest);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => SearchServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => SearchServiceBase$messageJson;
}

