//
//  Generated code. Do not modify.
//  source: protobufs/service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class DeleteReviewRequest extends $pb.GeneratedMessage {
  factory DeleteReviewRequest({
    $core.String? reviewId,
  }) {
    final $result = create();
    if (reviewId != null) {
      $result.reviewId = reviewId;
    }
    return $result;
  }
  DeleteReviewRequest._() : super();
  factory DeleteReviewRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteReviewRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteReviewRequest',
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'reviewId', protoName: 'reviewId')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteReviewRequest clone() => DeleteReviewRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteReviewRequest copyWith(void Function(DeleteReviewRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteReviewRequest))
          as DeleteReviewRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteReviewRequest create() => DeleteReviewRequest._();
  DeleteReviewRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteReviewRequest> createRepeated() =>
      $pb.PbList<DeleteReviewRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteReviewRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteReviewRequest>(create);
  static DeleteReviewRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get reviewId => $_getSZ(0);
  @$pb.TagNumber(1)
  set reviewId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasReviewId() => $_has(0);
  @$pb.TagNumber(1)
  void clearReviewId() => clearField(1);
}

class AddProfileResponse extends $pb.GeneratedMessage {
  factory AddProfileResponse() => create();
  AddProfileResponse._() : super();
  factory AddProfileResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AddProfileResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AddProfileResponse',
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AddProfileResponse clone() => AddProfileResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AddProfileResponse copyWith(void Function(AddProfileResponse) updates) =>
      super.copyWith((message) => updates(message as AddProfileResponse))
          as AddProfileResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddProfileResponse create() => AddProfileResponse._();
  AddProfileResponse createEmptyInstance() => create();
  static $pb.PbList<AddProfileResponse> createRepeated() =>
      $pb.PbList<AddProfileResponse>();
  @$core.pragma('dart2js:noInline')
  static AddProfileResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AddProfileResponse>(create);
  static AddProfileResponse? _defaultInstance;
}

class DeleteReviewResponse extends $pb.GeneratedMessage {
  factory DeleteReviewResponse() => create();
  DeleteReviewResponse._() : super();
  factory DeleteReviewResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteReviewResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteReviewResponse',
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteReviewResponse clone() =>
      DeleteReviewResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteReviewResponse copyWith(void Function(DeleteReviewResponse) updates) =>
      super.copyWith((message) => updates(message as DeleteReviewResponse))
          as DeleteReviewResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteReviewResponse create() => DeleteReviewResponse._();
  DeleteReviewResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteReviewResponse> createRepeated() =>
      $pb.PbList<DeleteReviewResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteReviewResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteReviewResponse>(create);
  static DeleteReviewResponse? _defaultInstance;
}

class UpdateReviewResponse extends $pb.GeneratedMessage {
  factory UpdateReviewResponse() => create();
  UpdateReviewResponse._() : super();
  factory UpdateReviewResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateReviewResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateReviewResponse',
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpdateReviewResponse clone() =>
      UpdateReviewResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpdateReviewResponse copyWith(void Function(UpdateReviewResponse) updates) =>
      super.copyWith((message) => updates(message as UpdateReviewResponse))
          as UpdateReviewResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateReviewResponse create() => UpdateReviewResponse._();
  UpdateReviewResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateReviewResponse> createRepeated() =>
      $pb.PbList<UpdateReviewResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateReviewResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateReviewResponse>(create);
  static UpdateReviewResponse? _defaultInstance;
}

class UpdateProfileResponse extends $pb.GeneratedMessage {
  factory UpdateProfileResponse() => create();
  UpdateProfileResponse._() : super();
  factory UpdateProfileResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateProfileResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateProfileResponse',
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpdateProfileResponse clone() =>
      UpdateProfileResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpdateProfileResponse copyWith(
          void Function(UpdateProfileResponse) updates) =>
      super.copyWith((message) => updates(message as UpdateProfileResponse))
          as UpdateProfileResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateProfileResponse create() => UpdateProfileResponse._();
  UpdateProfileResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateProfileResponse> createRepeated() =>
      $pb.PbList<UpdateProfileResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateProfileResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateProfileResponse>(create);
  static UpdateProfileResponse? _defaultInstance;
}

class ChangeStatusRequest extends $pb.GeneratedMessage {
  factory ChangeStatusRequest({
    $core.int? id,
    $core.String? status,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  ChangeStatusRequest._() : super();
  factory ChangeStatusRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChangeStatusRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChangeStatusRequest',
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ChangeStatusRequest clone() => ChangeStatusRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ChangeStatusRequest copyWith(void Function(ChangeStatusRequest) updates) =>
      super.copyWith((message) => updates(message as ChangeStatusRequest))
          as ChangeStatusRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChangeStatusRequest create() => ChangeStatusRequest._();
  ChangeStatusRequest createEmptyInstance() => create();
  static $pb.PbList<ChangeStatusRequest> createRepeated() =>
      $pb.PbList<ChangeStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static ChangeStatusRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChangeStatusRequest>(create);
  static ChangeStatusRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get status => $_getSZ(1);
  @$pb.TagNumber(2)
  set status($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);
}

class UserInfoByUserIdRequest extends $pb.GeneratedMessage {
  factory UserInfoByUserIdRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  UserInfoByUserIdRequest._() : super();
  factory UserInfoByUserIdRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UserInfoByUserIdRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserInfoByUserIdRequest',
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UserInfoByUserIdRequest clone() =>
      UserInfoByUserIdRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UserInfoByUserIdRequest copyWith(
          void Function(UserInfoByUserIdRequest) updates) =>
      super.copyWith((message) => updates(message as UserInfoByUserIdRequest))
          as UserInfoByUserIdRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserInfoByUserIdRequest create() => UserInfoByUserIdRequest._();
  UserInfoByUserIdRequest createEmptyInstance() => create();
  static $pb.PbList<UserInfoByUserIdRequest> createRepeated() =>
      $pb.PbList<UserInfoByUserIdRequest>();
  @$core.pragma('dart2js:noInline')
  static UserInfoByUserIdRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserInfoByUserIdRequest>(create);
  static UserInfoByUserIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class AddReviewResponse extends $pb.GeneratedMessage {
  factory AddReviewResponse({
    $core.bool? passed,
  }) {
    final $result = create();
    if (passed != null) {
      $result.passed = passed;
    }
    return $result;
  }
  AddReviewResponse._() : super();
  factory AddReviewResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AddReviewResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AddReviewResponse',
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'passed')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AddReviewResponse clone() => AddReviewResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AddReviewResponse copyWith(void Function(AddReviewResponse) updates) =>
      super.copyWith((message) => updates(message as AddReviewResponse))
          as AddReviewResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddReviewResponse create() => AddReviewResponse._();
  AddReviewResponse createEmptyInstance() => create();
  static $pb.PbList<AddReviewResponse> createRepeated() =>
      $pb.PbList<AddReviewResponse>();
  @$core.pragma('dart2js:noInline')
  static AddReviewResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AddReviewResponse>(create);
  static AddReviewResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get passed => $_getBF(0);
  @$pb.TagNumber(1)
  set passed($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPassed() => $_has(0);
  @$pb.TagNumber(1)
  void clearPassed() => clearField(1);
}

class ReviewsByUserIdRequest extends $pb.GeneratedMessage {
  factory ReviewsByUserIdRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  ReviewsByUserIdRequest._() : super();
  factory ReviewsByUserIdRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReviewsByUserIdRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReviewsByUserIdRequest',
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ReviewsByUserIdRequest clone() =>
      ReviewsByUserIdRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ReviewsByUserIdRequest copyWith(
          void Function(ReviewsByUserIdRequest) updates) =>
      super.copyWith((message) => updates(message as ReviewsByUserIdRequest))
          as ReviewsByUserIdRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReviewsByUserIdRequest create() => ReviewsByUserIdRequest._();
  ReviewsByUserIdRequest createEmptyInstance() => create();
  static $pb.PbList<ReviewsByUserIdRequest> createRepeated() =>
      $pb.PbList<ReviewsByUserIdRequest>();
  @$core.pragma('dart2js:noInline')
  static ReviewsByUserIdRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReviewsByUserIdRequest>(create);
  static ReviewsByUserIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class ListProfessorRequest extends $pb.GeneratedMessage {
  factory ListProfessorRequest() => create();
  ListProfessorRequest._() : super();
  factory ListProfessorRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListProfessorRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListProfessorRequest',
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListProfessorRequest clone() =>
      ListProfessorRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListProfessorRequest copyWith(void Function(ListProfessorRequest) updates) =>
      super.copyWith((message) => updates(message as ListProfessorRequest))
          as ListProfessorRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListProfessorRequest create() => ListProfessorRequest._();
  ListProfessorRequest createEmptyInstance() => create();
  static $pb.PbList<ListProfessorRequest> createRepeated() =>
      $pb.PbList<ListProfessorRequest>();
  @$core.pragma('dart2js:noInline')
  static ListProfessorRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListProfessorRequest>(create);
  static ListProfessorRequest? _defaultInstance;
}

class ReviewsByProfessorIdRequest extends $pb.GeneratedMessage {
  factory ReviewsByProfessorIdRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  ReviewsByProfessorIdRequest._() : super();
  factory ReviewsByProfessorIdRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReviewsByProfessorIdRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReviewsByProfessorIdRequest',
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ReviewsByProfessorIdRequest clone() =>
      ReviewsByProfessorIdRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ReviewsByProfessorIdRequest copyWith(
          void Function(ReviewsByProfessorIdRequest) updates) =>
      super.copyWith(
              (message) => updates(message as ReviewsByProfessorIdRequest))
          as ReviewsByProfessorIdRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReviewsByProfessorIdRequest create() =>
      ReviewsByProfessorIdRequest._();
  ReviewsByProfessorIdRequest createEmptyInstance() => create();
  static $pb.PbList<ReviewsByProfessorIdRequest> createRepeated() =>
      $pb.PbList<ReviewsByProfessorIdRequest>();
  @$core.pragma('dart2js:noInline')
  static ReviewsByProfessorIdRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReviewsByProfessorIdRequest>(create);
  static ReviewsByProfessorIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class User extends $pb.GeneratedMessage {
  factory User({
    $core.int? id,
    $core.String? name,
    $core.List<$core.int>? avatar,
    $core.int? rating,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    if (rating != null) {
      $result.rating = rating;
    }
    return $result;
  }
  User._() : super();
  factory User.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory User.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'User',
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'avatar', $pb.PbFieldType.OY)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'rating', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  User clone() => User()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  User copyWith(void Function(User) updates) =>
      super.copyWith((message) => updates(message as User)) as User;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => $pb.PbList<User>();
  @$core.pragma('dart2js:noInline')
  static User getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get avatar => $_getN(2);
  @$pb.TagNumber(3)
  set avatar($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAvatar() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvatar() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get rating => $_getIZ(3);
  @$pb.TagNumber(4)
  set rating($core.int v) {
    $_setSignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasRating() => $_has(3);
  @$pb.TagNumber(4)
  void clearRating() => clearField(4);
}

class Professor extends $pb.GeneratedMessage {
  factory Professor({
    $core.int? id,
    $core.String? name,
    $core.String? avatar,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    return $result;
  }
  Professor._() : super();
  factory Professor.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Professor.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Professor',
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'avatar')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Professor clone() => Professor()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Professor copyWith(void Function(Professor) updates) =>
      super.copyWith((message) => updates(message as Professor)) as Professor;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Professor create() => Professor._();
  Professor createEmptyInstance() => create();
  static $pb.PbList<Professor> createRepeated() => $pb.PbList<Professor>();
  @$core.pragma('dart2js:noInline')
  static Professor getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Professor>(create);
  static Professor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get avatar => $_getSZ(2);
  @$pb.TagNumber(3)
  set avatar($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAvatar() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvatar() => clearField(3);
}

class Review extends $pb.GeneratedMessage {
  factory Review({
    $core.String? reviewId,
    $core.int? userId,
    $core.String? comment,
    $core.double? objectivity,
    $core.double? loyalty,
    $core.double? professionalism,
    $core.double? harshness,
    $core.String? date,
    $core.int? raiting,
    $core.int? professorId,
    $core.int? rating,
  }) {
    final $result = create();
    if (reviewId != null) {
      $result.reviewId = reviewId;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (comment != null) {
      $result.comment = comment;
    }
    if (objectivity != null) {
      $result.objectivity = objectivity;
    }
    if (loyalty != null) {
      $result.loyalty = loyalty;
    }
    if (professionalism != null) {
      $result.professionalism = professionalism;
    }
    if (harshness != null) {
      $result.harshness = harshness;
    }
    if (date != null) {
      $result.date = date;
    }
    if (raiting != null) {
      $result.raiting = raiting;
    }
    if (professorId != null) {
      $result.professorId = professorId;
    }
    if (rating != null) {
      $result.rating = rating;
    }
    return $result;
  }
  Review._() : super();
  factory Review.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Review.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Review',
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'reviewId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3)
    ..aOS(3, _omitFieldNames ? '' : 'comment')
    ..a<$core.double>(
        4, _omitFieldNames ? '' : 'objectivity', $pb.PbFieldType.OF)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'loyalty', $pb.PbFieldType.OF)
    ..a<$core.double>(
        6, _omitFieldNames ? '' : 'professionalism', $pb.PbFieldType.OF)
    ..a<$core.double>(7, _omitFieldNames ? '' : 'harshness', $pb.PbFieldType.OF)
    ..aOS(8, _omitFieldNames ? '' : 'date')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'raiting', $pb.PbFieldType.O3)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'professorId', $pb.PbFieldType.O3)
    ..a<$core.int>(13, _omitFieldNames ? '' : 'rating', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Review clone() => Review()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Review copyWith(void Function(Review) updates) =>
      super.copyWith((message) => updates(message as Review)) as Review;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Review create() => Review._();
  Review createEmptyInstance() => create();
  static $pb.PbList<Review> createRepeated() => $pb.PbList<Review>();
  @$core.pragma('dart2js:noInline')
  static Review getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Review>(create);
  static Review? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get reviewId => $_getSZ(0);
  @$pb.TagNumber(1)
  set reviewId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasReviewId() => $_has(0);
  @$pb.TagNumber(1)
  void clearReviewId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get userId => $_getIZ(1);
  @$pb.TagNumber(2)
  set userId($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get comment => $_getSZ(2);
  @$pb.TagNumber(3)
  set comment($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasComment() => $_has(2);
  @$pb.TagNumber(3)
  void clearComment() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get objectivity => $_getN(3);
  @$pb.TagNumber(4)
  set objectivity($core.double v) {
    $_setFloat(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasObjectivity() => $_has(3);
  @$pb.TagNumber(4)
  void clearObjectivity() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get loyalty => $_getN(4);
  @$pb.TagNumber(5)
  set loyalty($core.double v) {
    $_setFloat(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasLoyalty() => $_has(4);
  @$pb.TagNumber(5)
  void clearLoyalty() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get professionalism => $_getN(5);
  @$pb.TagNumber(6)
  set professionalism($core.double v) {
    $_setFloat(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasProfessionalism() => $_has(5);
  @$pb.TagNumber(6)
  void clearProfessionalism() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get harshness => $_getN(6);
  @$pb.TagNumber(7)
  set harshness($core.double v) {
    $_setFloat(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasHarshness() => $_has(6);
  @$pb.TagNumber(7)
  void clearHarshness() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get date => $_getSZ(7);
  @$pb.TagNumber(8)
  set date($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasDate() => $_has(7);
  @$pb.TagNumber(8)
  void clearDate() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get raiting => $_getIZ(8);
  @$pb.TagNumber(9)
  set raiting($core.int v) {
    $_setSignedInt32(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasRaiting() => $_has(8);
  @$pb.TagNumber(9)
  void clearRaiting() => clearField(9);

  @$pb.TagNumber(11)
  $core.int get professorId => $_getIZ(9);
  @$pb.TagNumber(11)
  set professorId($core.int v) {
    $_setSignedInt32(9, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasProfessorId() => $_has(9);
  @$pb.TagNumber(11)
  void clearProfessorId() => clearField(11);

  @$pb.TagNumber(13)
  $core.int get rating => $_getIZ(10);
  @$pb.TagNumber(13)
  set rating($core.int v) {
    $_setSignedInt32(10, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasRating() => $_has(10);
  @$pb.TagNumber(13)
  void clearRating() => clearField(13);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
