//
//  Generated code. Do not modify.
//  source: shared/protobuf/service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ListProfessorsByGroupResponce extends $pb.GeneratedMessage {
  factory ListProfessorsByGroupResponce({
    $core.Iterable<Professor>? professors,
  }) {
    final $result = create();
    if (professors != null) {
      $result.professors.addAll(professors);
    }
    return $result;
  }
  ListProfessorsByGroupResponce._() : super();
  factory ListProfessorsByGroupResponce.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListProfessorsByGroupResponce.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(_omitMessageNames ? '' : 'ListProfessorsByGroupResponce', createEmptyInstance: create)
        ..pc<Professor>(1, _omitFieldNames ? '' : 'professors', $pb.PbFieldType.PM, subBuilder: Professor.create)
        ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListProfessorsByGroupResponce clone() => ListProfessorsByGroupResponce()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListProfessorsByGroupResponce copyWith(void Function(ListProfessorsByGroupResponce) updates) =>
      super.copyWith((message) => updates(message as ListProfessorsByGroupResponce)) as ListProfessorsByGroupResponce;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListProfessorsByGroupResponce create() => ListProfessorsByGroupResponce._();
  ListProfessorsByGroupResponce createEmptyInstance() => create();
  static $pb.PbList<ListProfessorsByGroupResponce> createRepeated() => $pb.PbList<ListProfessorsByGroupResponce>();
  @$core.pragma('dart2js:noInline')
  static ListProfessorsByGroupResponce getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListProfessorsByGroupResponce>(create);
  static ListProfessorsByGroupResponce? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Professor> get professors => $_getList(0);
}

class GroupListRequest extends $pb.GeneratedMessage {
  factory GroupListRequest({
    $core.int? count,
    $core.String? group,
  }) {
    final $result = create();
    if (count != null) {
      $result.count = count;
    }
    if (group != null) {
      $result.group = group;
    }
    return $result;
  }
  GroupListRequest._() : super();
  factory GroupListRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GroupListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupListRequest', createEmptyInstance: create)
        ..a<$core.int>(1, _omitFieldNames ? '' : 'count', $pb.PbFieldType.O3)
        ..aOS(2, _omitFieldNames ? '' : 'group')
        ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GroupListRequest clone() => GroupListRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GroupListRequest copyWith(void Function(GroupListRequest) updates) =>
      super.copyWith((message) => updates(message as GroupListRequest)) as GroupListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupListRequest create() => GroupListRequest._();
  GroupListRequest createEmptyInstance() => create();
  static $pb.PbList<GroupListRequest> createRepeated() => $pb.PbList<GroupListRequest>();
  @$core.pragma('dart2js:noInline')
  static GroupListRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupListRequest>(create);
  static GroupListRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get count => $_getIZ(0);
  @$pb.TagNumber(1)
  set count($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get group => $_getSZ(1);
  @$pb.TagNumber(2)
  set group($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasGroup() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroup() => clearField(2);
}

class GetListGroupsResponce extends $pb.GeneratedMessage {
  factory GetListGroupsResponce({
    $core.Iterable<Group>? groups,
  }) {
    final $result = create();
    if (groups != null) {
      $result.groups.addAll(groups);
    }
    return $result;
  }
  GetListGroupsResponce._() : super();
  factory GetListGroupsResponce.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetListGroupsResponce.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(_omitMessageNames ? '' : 'GetListGroupsResponce', createEmptyInstance: create)
        ..pc<Group>(1, _omitFieldNames ? '' : 'groups', $pb.PbFieldType.PM, subBuilder: Group.create)
        ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetListGroupsResponce clone() => GetListGroupsResponce()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetListGroupsResponce copyWith(void Function(GetListGroupsResponce) updates) =>
      super.copyWith((message) => updates(message as GetListGroupsResponce)) as GetListGroupsResponce;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetListGroupsResponce create() => GetListGroupsResponce._();
  GetListGroupsResponce createEmptyInstance() => create();
  static $pb.PbList<GetListGroupsResponce> createRepeated() => $pb.PbList<GetListGroupsResponce>();
  @$core.pragma('dart2js:noInline')
  static GetListGroupsResponce getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetListGroupsResponce>(create);
  static GetListGroupsResponce? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Group> get groups => $_getList(0);
}

class ReviewWithProfessorResponse extends $pb.GeneratedMessage {
  factory ReviewWithProfessorResponse({
    $core.Iterable<ReviewWithProfessor>? list,
  }) {
    final $result = create();
    if (list != null) {
      $result.list.addAll(list);
    }
    return $result;
  }
  ReviewWithProfessorResponse._() : super();
  factory ReviewWithProfessorResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReviewWithProfessorResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(_omitMessageNames ? '' : 'ReviewWithProfessorResponse', createEmptyInstance: create)
        ..pc<ReviewWithProfessor>(1, _omitFieldNames ? '' : 'list', $pb.PbFieldType.PM,
            subBuilder: ReviewWithProfessor.create)
        ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ReviewWithProfessorResponse clone() => ReviewWithProfessorResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ReviewWithProfessorResponse copyWith(void Function(ReviewWithProfessorResponse) updates) =>
      super.copyWith((message) => updates(message as ReviewWithProfessorResponse)) as ReviewWithProfessorResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReviewWithProfessorResponse create() => ReviewWithProfessorResponse._();
  ReviewWithProfessorResponse createEmptyInstance() => create();
  static $pb.PbList<ReviewWithProfessorResponse> createRepeated() => $pb.PbList<ReviewWithProfessorResponse>();
  @$core.pragma('dart2js:noInline')
  static ReviewWithProfessorResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReviewWithProfessorResponse>(create);
  static ReviewWithProfessorResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ReviewWithProfessor> get list => $_getList(0);
}

class ReviewWithUserResponse extends $pb.GeneratedMessage {
  factory ReviewWithUserResponse({
    $core.Iterable<ReviewWithUser>? list,
  }) {
    final $result = create();
    if (list != null) {
      $result.list.addAll(list);
    }
    return $result;
  }
  ReviewWithUserResponse._() : super();
  factory ReviewWithUserResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReviewWithUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(_omitMessageNames ? '' : 'ReviewWithUserResponse', createEmptyInstance: create)
        ..pc<ReviewWithUser>(1, _omitFieldNames ? '' : 'list', $pb.PbFieldType.PM, subBuilder: ReviewWithUser.create)
        ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ReviewWithUserResponse clone() => ReviewWithUserResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ReviewWithUserResponse copyWith(void Function(ReviewWithUserResponse) updates) =>
      super.copyWith((message) => updates(message as ReviewWithUserResponse)) as ReviewWithUserResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReviewWithUserResponse create() => ReviewWithUserResponse._();
  ReviewWithUserResponse createEmptyInstance() => create();
  static $pb.PbList<ReviewWithUserResponse> createRepeated() => $pb.PbList<ReviewWithUserResponse>();
  @$core.pragma('dart2js:noInline')
  static ReviewWithUserResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReviewWithUserResponse>(create);
  static ReviewWithUserResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ReviewWithUser> get list => $_getList(0);
}

class FindProfessorResponse extends $pb.GeneratedMessage {
  factory FindProfessorResponse({
    $core.Iterable<Professor>? professors,
  }) {
    final $result = create();
    if (professors != null) {
      $result.professors.addAll(professors);
    }
    return $result;
  }
  FindProfessorResponse._() : super();
  factory FindProfessorResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FindProfessorResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(_omitMessageNames ? '' : 'FindProfessorResponse', createEmptyInstance: create)
        ..pc<Professor>(1, _omitFieldNames ? '' : 'professors', $pb.PbFieldType.PM, subBuilder: Professor.create)
        ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FindProfessorResponse clone() => FindProfessorResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FindProfessorResponse copyWith(void Function(FindProfessorResponse) updates) =>
      super.copyWith((message) => updates(message as FindProfessorResponse)) as FindProfessorResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FindProfessorResponse create() => FindProfessorResponse._();
  FindProfessorResponse createEmptyInstance() => create();
  static $pb.PbList<FindProfessorResponse> createRepeated() => $pb.PbList<FindProfessorResponse>();
  @$core.pragma('dart2js:noInline')
  static FindProfessorResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FindProfessorResponse>(create);
  static FindProfessorResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Professor> get professors => $_getList(0);
}

class ListProfessorsByGroupRequest extends $pb.GeneratedMessage {
  factory ListProfessorsByGroupRequest({
    $core.int? count,
    $core.String? group,
  }) {
    final $result = create();
    if (count != null) {
      $result.count = count;
    }
    if (group != null) {
      $result.group = group;
    }
    return $result;
  }
  ListProfessorsByGroupRequest._() : super();
  factory ListProfessorsByGroupRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListProfessorsByGroupRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(_omitMessageNames ? '' : 'ListProfessorsByGroupRequest', createEmptyInstance: create)
        ..a<$core.int>(1, _omitFieldNames ? '' : 'count', $pb.PbFieldType.O3)
        ..aOS(2, _omitFieldNames ? '' : 'group')
        ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListProfessorsByGroupRequest clone() => ListProfessorsByGroupRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListProfessorsByGroupRequest copyWith(void Function(ListProfessorsByGroupRequest) updates) =>
      super.copyWith((message) => updates(message as ListProfessorsByGroupRequest)) as ListProfessorsByGroupRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListProfessorsByGroupRequest create() => ListProfessorsByGroupRequest._();
  ListProfessorsByGroupRequest createEmptyInstance() => create();
  static $pb.PbList<ListProfessorsByGroupRequest> createRepeated() => $pb.PbList<ListProfessorsByGroupRequest>();
  @$core.pragma('dart2js:noInline')
  static ListProfessorsByGroupRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListProfessorsByGroupRequest>(create);
  static ListProfessorsByGroupRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get count => $_getIZ(0);
  @$pb.TagNumber(1)
  set count($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get group => $_getSZ(1);
  @$pb.TagNumber(2)
  set group($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasGroup() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroup() => clearField(2);
}

class ReviewWithUser extends $pb.GeneratedMessage {
  factory ReviewWithUser({
    Review? review,
    User? user,
    Reaction? reaction,
  }) {
    final $result = create();
    if (review != null) {
      $result.review = review;
    }
    if (user != null) {
      $result.user = user;
    }
    if (reaction != null) {
      $result.reaction = reaction;
    }
    return $result;
  }
  ReviewWithUser._() : super();
  factory ReviewWithUser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReviewWithUser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(_omitMessageNames ? '' : 'ReviewWithUser', createEmptyInstance: create)
        ..aOM<Review>(1, _omitFieldNames ? '' : 'review', subBuilder: Review.create)
        ..aOM<User>(2, _omitFieldNames ? '' : 'user', subBuilder: User.create)
        ..aOM<Reaction>(3, _omitFieldNames ? '' : 'reaction', subBuilder: Reaction.create)
        ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ReviewWithUser clone() => ReviewWithUser()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ReviewWithUser copyWith(void Function(ReviewWithUser) updates) =>
      super.copyWith((message) => updates(message as ReviewWithUser)) as ReviewWithUser;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReviewWithUser create() => ReviewWithUser._();
  ReviewWithUser createEmptyInstance() => create();
  static $pb.PbList<ReviewWithUser> createRepeated() => $pb.PbList<ReviewWithUser>();
  @$core.pragma('dart2js:noInline')
  static ReviewWithUser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReviewWithUser>(create);
  static ReviewWithUser? _defaultInstance;

  @$pb.TagNumber(1)
  Review get review => $_getN(0);
  @$pb.TagNumber(1)
  set review(Review v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasReview() => $_has(0);
  @$pb.TagNumber(1)
  void clearReview() => clearField(1);
  @$pb.TagNumber(1)
  Review ensureReview() => $_ensure(0);

  @$pb.TagNumber(2)
  User get user => $_getN(1);
  @$pb.TagNumber(2)
  set user(User v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearUser() => clearField(2);
  @$pb.TagNumber(2)
  User ensureUser() => $_ensure(1);

  @$pb.TagNumber(3)
  Reaction get reaction => $_getN(2);
  @$pb.TagNumber(3)
  set reaction(Reaction v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasReaction() => $_has(2);
  @$pb.TagNumber(3)
  void clearReaction() => clearField(3);
  @$pb.TagNumber(3)
  Reaction ensureReaction() => $_ensure(2);
}

class ReviewWithProfessor extends $pb.GeneratedMessage {
  factory ReviewWithProfessor({
    Review? review,
    Professor? professor,
    Reaction? reaction,
  }) {
    final $result = create();
    if (review != null) {
      $result.review = review;
    }
    if (professor != null) {
      $result.professor = professor;
    }
    if (reaction != null) {
      $result.reaction = reaction;
    }
    return $result;
  }
  ReviewWithProfessor._() : super();
  factory ReviewWithProfessor.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReviewWithProfessor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(_omitMessageNames ? '' : 'ReviewWithProfessor', createEmptyInstance: create)
        ..aOM<Review>(1, _omitFieldNames ? '' : 'review', subBuilder: Review.create)
        ..aOM<Professor>(2, _omitFieldNames ? '' : 'professor', subBuilder: Professor.create)
        ..aOM<Reaction>(3, _omitFieldNames ? '' : 'reaction', subBuilder: Reaction.create)
        ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ReviewWithProfessor clone() => ReviewWithProfessor()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ReviewWithProfessor copyWith(void Function(ReviewWithProfessor) updates) =>
      super.copyWith((message) => updates(message as ReviewWithProfessor)) as ReviewWithProfessor;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReviewWithProfessor create() => ReviewWithProfessor._();
  ReviewWithProfessor createEmptyInstance() => create();
  static $pb.PbList<ReviewWithProfessor> createRepeated() => $pb.PbList<ReviewWithProfessor>();
  @$core.pragma('dart2js:noInline')
  static ReviewWithProfessor getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReviewWithProfessor>(create);
  static ReviewWithProfessor? _defaultInstance;

  @$pb.TagNumber(1)
  Review get review => $_getN(0);
  @$pb.TagNumber(1)
  set review(Review v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasReview() => $_has(0);
  @$pb.TagNumber(1)
  void clearReview() => clearField(1);
  @$pb.TagNumber(1)
  Review ensureReview() => $_ensure(0);

  @$pb.TagNumber(2)
  Professor get professor => $_getN(1);
  @$pb.TagNumber(2)
  set professor(Professor v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasProfessor() => $_has(1);
  @$pb.TagNumber(2)
  void clearProfessor() => clearField(2);
  @$pb.TagNumber(2)
  Professor ensureProfessor() => $_ensure(1);

  @$pb.TagNumber(3)
  Reaction get reaction => $_getN(2);
  @$pb.TagNumber(3)
  set reaction(Reaction v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasReaction() => $_has(2);
  @$pb.TagNumber(3)
  void clearReaction() => clearField(3);
  @$pb.TagNumber(3)
  Reaction ensureReaction() => $_ensure(2);
}

class ReactionResponse extends $pb.GeneratedMessage {
  factory ReactionResponse() => create();
  ReactionResponse._() : super();
  factory ReactionResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReactionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(_omitMessageNames ? '' : 'ReactionResponse', createEmptyInstance: create)
        ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ReactionResponse clone() => ReactionResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ReactionResponse copyWith(void Function(ReactionResponse) updates) =>
      super.copyWith((message) => updates(message as ReactionResponse)) as ReactionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReactionResponse create() => ReactionResponse._();
  ReactionResponse createEmptyInstance() => create();
  static $pb.PbList<ReactionResponse> createRepeated() => $pb.PbList<ReactionResponse>();
  @$core.pragma('dart2js:noInline')
  static ReactionResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReactionResponse>(create);
  static ReactionResponse? _defaultInstance;
}

class DeleteReactionRequest extends $pb.GeneratedMessage {
  factory DeleteReactionRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteReactionRequest._() : super();
  factory DeleteReactionRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteReactionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteReactionRequest', createEmptyInstance: create)
        ..aOS(1, _omitFieldNames ? '' : 'id')
        ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteReactionRequest clone() => DeleteReactionRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteReactionRequest copyWith(void Function(DeleteReactionRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteReactionRequest)) as DeleteReactionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteReactionRequest create() => DeleteReactionRequest._();
  DeleteReactionRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteReactionRequest> createRepeated() => $pb.PbList<DeleteReactionRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteReactionRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteReactionRequest>(create);
  static DeleteReactionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class ReviewStream extends $pb.GeneratedMessage {
  factory ReviewStream({
    $core.Iterable<Review>? reviews,
  }) {
    final $result = create();
    if (reviews != null) {
      $result.reviews.addAll(reviews);
    }
    return $result;
  }
  ReviewStream._() : super();
  factory ReviewStream.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReviewStream.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(_omitMessageNames ? '' : 'ReviewStream', createEmptyInstance: create)
        ..pc<Review>(1, _omitFieldNames ? '' : 'reviews', $pb.PbFieldType.PM, subBuilder: Review.create)
        ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ReviewStream clone() => ReviewStream()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ReviewStream copyWith(void Function(ReviewStream) updates) =>
      super.copyWith((message) => updates(message as ReviewStream)) as ReviewStream;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReviewStream create() => ReviewStream._();
  ReviewStream createEmptyInstance() => create();
  static $pb.PbList<ReviewStream> createRepeated() => $pb.PbList<ReviewStream>();
  @$core.pragma('dart2js:noInline')
  static ReviewStream getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReviewStream>(create);
  static ReviewStream? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Review> get reviews => $_getList(0);
}

class SearchResponse extends $pb.GeneratedMessage {
  factory SearchResponse({
    $core.Iterable<Professor>? professors,
  }) {
    final $result = create();
    if (professors != null) {
      $result.professors.addAll(professors);
    }
    return $result;
  }
  SearchResponse._() : super();
  factory SearchResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SearchResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchResponse', createEmptyInstance: create)
        ..pc<Professor>(1, _omitFieldNames ? '' : 'professors', $pb.PbFieldType.PM, subBuilder: Professor.create)
        ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SearchResponse clone() => SearchResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SearchResponse copyWith(void Function(SearchResponse) updates) =>
      super.copyWith((message) => updates(message as SearchResponse)) as SearchResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchResponse create() => SearchResponse._();
  SearchResponse createEmptyInstance() => create();
  static $pb.PbList<SearchResponse> createRepeated() => $pb.PbList<SearchResponse>();
  @$core.pragma('dart2js:noInline')
  static SearchResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchResponse>(create);
  static SearchResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Professor> get professors => $_getList(0);
}

class SearchRequest extends $pb.GeneratedMessage {
  factory SearchRequest({
    $core.String? name,
    $core.int? count,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  SearchRequest._() : super();
  factory SearchRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SearchRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchRequest', createEmptyInstance: create)
        ..aOS(1, _omitFieldNames ? '' : 'name')
        ..a<$core.int>(2, _omitFieldNames ? '' : 'count', $pb.PbFieldType.O3)
        ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SearchRequest clone() => SearchRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SearchRequest copyWith(void Function(SearchRequest) updates) =>
      super.copyWith((message) => updates(message as SearchRequest)) as SearchRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchRequest create() => SearchRequest._();
  SearchRequest createEmptyInstance() => create();
  static $pb.PbList<SearchRequest> createRepeated() => $pb.PbList<SearchRequest>();
  @$core.pragma('dart2js:noInline')
  static SearchRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchRequest>(create);
  static SearchRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);
}

class GetAllProfessorsOnceRequest extends $pb.GeneratedMessage {
  factory GetAllProfessorsOnceRequest() => create();
  GetAllProfessorsOnceRequest._() : super();
  factory GetAllProfessorsOnceRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetAllProfessorsOnceRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAllProfessorsOnceRequest', createEmptyInstance: create)
        ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetAllProfessorsOnceRequest clone() => GetAllProfessorsOnceRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetAllProfessorsOnceRequest copyWith(void Function(GetAllProfessorsOnceRequest) updates) =>
      super.copyWith((message) => updates(message as GetAllProfessorsOnceRequest)) as GetAllProfessorsOnceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllProfessorsOnceRequest create() => GetAllProfessorsOnceRequest._();
  GetAllProfessorsOnceRequest createEmptyInstance() => create();
  static $pb.PbList<GetAllProfessorsOnceRequest> createRepeated() => $pb.PbList<GetAllProfessorsOnceRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAllProfessorsOnceRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllProfessorsOnceRequest>(create);
  static GetAllProfessorsOnceRequest? _defaultInstance;
}

class GetListProfessorResponse extends $pb.GeneratedMessage {
  factory GetListProfessorResponse({
    $core.Iterable<Professor>? professors,
  }) {
    final $result = create();
    if (professors != null) {
      $result.professors.addAll(professors);
    }
    return $result;
  }
  GetListProfessorResponse._() : super();
  factory GetListProfessorResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetListProfessorResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(_omitMessageNames ? '' : 'GetListProfessorResponse', createEmptyInstance: create)
        ..pc<Professor>(1, _omitFieldNames ? '' : 'professors', $pb.PbFieldType.PM, subBuilder: Professor.create)
        ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetListProfessorResponse clone() => GetListProfessorResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetListProfessorResponse copyWith(void Function(GetListProfessorResponse) updates) =>
      super.copyWith((message) => updates(message as GetListProfessorResponse)) as GetListProfessorResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetListProfessorResponse create() => GetListProfessorResponse._();
  GetListProfessorResponse createEmptyInstance() => create();
  static $pb.PbList<GetListProfessorResponse> createRepeated() => $pb.PbList<GetListProfessorResponse>();
  @$core.pragma('dart2js:noInline')
  static GetListProfessorResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetListProfessorResponse>(create);
  static GetListProfessorResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Professor> get professors => $_getList(0);
}

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
  factory DeleteReviewRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteReviewRequest', createEmptyInstance: create)
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
      super.copyWith((message) => updates(message as DeleteReviewRequest)) as DeleteReviewRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteReviewRequest create() => DeleteReviewRequest._();
  DeleteReviewRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteReviewRequest> createRepeated() => $pb.PbList<DeleteReviewRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteReviewRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteReviewRequest>(create);
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
  factory AddProfileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(_omitMessageNames ? '' : 'AddProfileResponse', createEmptyInstance: create)
        ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AddProfileResponse clone() => AddProfileResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AddProfileResponse copyWith(void Function(AddProfileResponse) updates) =>
      super.copyWith((message) => updates(message as AddProfileResponse)) as AddProfileResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddProfileResponse create() => AddProfileResponse._();
  AddProfileResponse createEmptyInstance() => create();
  static $pb.PbList<AddProfileResponse> createRepeated() => $pb.PbList<AddProfileResponse>();
  @$core.pragma('dart2js:noInline')
  static AddProfileResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddProfileResponse>(create);
  static AddProfileResponse? _defaultInstance;
}

class DeleteReviewResponse extends $pb.GeneratedMessage {
  factory DeleteReviewResponse() => create();
  DeleteReviewResponse._() : super();
  factory DeleteReviewResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteReviewResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteReviewResponse', createEmptyInstance: create)
        ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteReviewResponse clone() => DeleteReviewResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteReviewResponse copyWith(void Function(DeleteReviewResponse) updates) =>
      super.copyWith((message) => updates(message as DeleteReviewResponse)) as DeleteReviewResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteReviewResponse create() => DeleteReviewResponse._();
  DeleteReviewResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteReviewResponse> createRepeated() => $pb.PbList<DeleteReviewResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteReviewResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteReviewResponse>(create);
  static DeleteReviewResponse? _defaultInstance;
}

class UpdateReviewResponse extends $pb.GeneratedMessage {
  factory UpdateReviewResponse() => create();
  UpdateReviewResponse._() : super();
  factory UpdateReviewResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateReviewResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateReviewResponse', createEmptyInstance: create)
        ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpdateReviewResponse clone() => UpdateReviewResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpdateReviewResponse copyWith(void Function(UpdateReviewResponse) updates) =>
      super.copyWith((message) => updates(message as UpdateReviewResponse)) as UpdateReviewResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateReviewResponse create() => UpdateReviewResponse._();
  UpdateReviewResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateReviewResponse> createRepeated() => $pb.PbList<UpdateReviewResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateReviewResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateReviewResponse>(create);
  static UpdateReviewResponse? _defaultInstance;
}

class UpdateProfileResponse extends $pb.GeneratedMessage {
  factory UpdateProfileResponse() => create();
  UpdateProfileResponse._() : super();
  factory UpdateProfileResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateProfileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateProfileResponse', createEmptyInstance: create)
        ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpdateProfileResponse clone() => UpdateProfileResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpdateProfileResponse copyWith(void Function(UpdateProfileResponse) updates) =>
      super.copyWith((message) => updates(message as UpdateProfileResponse)) as UpdateProfileResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateProfileResponse create() => UpdateProfileResponse._();
  UpdateProfileResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateProfileResponse> createRepeated() => $pb.PbList<UpdateProfileResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateProfileResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateProfileResponse>(create);
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
  factory ChangeStatusRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(_omitMessageNames ? '' : 'ChangeStatusRequest', createEmptyInstance: create)
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
      super.copyWith((message) => updates(message as ChangeStatusRequest)) as ChangeStatusRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChangeStatusRequest create() => ChangeStatusRequest._();
  ChangeStatusRequest createEmptyInstance() => create();
  static $pb.PbList<ChangeStatusRequest> createRepeated() => $pb.PbList<ChangeStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static ChangeStatusRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChangeStatusRequest>(create);
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
  factory UserInfoByUserIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(_omitMessageNames ? '' : 'UserInfoByUserIdRequest', createEmptyInstance: create)
        ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
        ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UserInfoByUserIdRequest clone() => UserInfoByUserIdRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UserInfoByUserIdRequest copyWith(void Function(UserInfoByUserIdRequest) updates) =>
      super.copyWith((message) => updates(message as UserInfoByUserIdRequest)) as UserInfoByUserIdRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserInfoByUserIdRequest create() => UserInfoByUserIdRequest._();
  UserInfoByUserIdRequest createEmptyInstance() => create();
  static $pb.PbList<UserInfoByUserIdRequest> createRepeated() => $pb.PbList<UserInfoByUserIdRequest>();
  @$core.pragma('dart2js:noInline')
  static UserInfoByUserIdRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserInfoByUserIdRequest>(create);
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
  factory AddReviewResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(_omitMessageNames ? '' : 'AddReviewResponse', createEmptyInstance: create)
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
      super.copyWith((message) => updates(message as AddReviewResponse)) as AddReviewResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddReviewResponse create() => AddReviewResponse._();
  AddReviewResponse createEmptyInstance() => create();
  static $pb.PbList<AddReviewResponse> createRepeated() => $pb.PbList<AddReviewResponse>();
  @$core.pragma('dart2js:noInline')
  static AddReviewResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddReviewResponse>(create);
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
  factory ReviewsByUserIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(_omitMessageNames ? '' : 'ReviewsByUserIdRequest', createEmptyInstance: create)
        ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
        ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ReviewsByUserIdRequest clone() => ReviewsByUserIdRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ReviewsByUserIdRequest copyWith(void Function(ReviewsByUserIdRequest) updates) =>
      super.copyWith((message) => updates(message as ReviewsByUserIdRequest)) as ReviewsByUserIdRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReviewsByUserIdRequest create() => ReviewsByUserIdRequest._();
  ReviewsByUserIdRequest createEmptyInstance() => create();
  static $pb.PbList<ReviewsByUserIdRequest> createRepeated() => $pb.PbList<ReviewsByUserIdRequest>();
  @$core.pragma('dart2js:noInline')
  static ReviewsByUserIdRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReviewsByUserIdRequest>(create);
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
  factory ListProfessorRequest({
    $core.int? count,
  }) {
    final $result = create();
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  ListProfessorRequest._() : super();
  factory ListProfessorRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListProfessorRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(_omitMessageNames ? '' : 'ListProfessorRequest', createEmptyInstance: create)
        ..a<$core.int>(1, _omitFieldNames ? '' : 'count', $pb.PbFieldType.O3)
        ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListProfessorRequest clone() => ListProfessorRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListProfessorRequest copyWith(void Function(ListProfessorRequest) updates) =>
      super.copyWith((message) => updates(message as ListProfessorRequest)) as ListProfessorRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListProfessorRequest create() => ListProfessorRequest._();
  ListProfessorRequest createEmptyInstance() => create();
  static $pb.PbList<ListProfessorRequest> createRepeated() => $pb.PbList<ListProfessorRequest>();
  @$core.pragma('dart2js:noInline')
  static ListProfessorRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListProfessorRequest>(create);
  static ListProfessorRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get count => $_getIZ(0);
  @$pb.TagNumber(1)
  set count($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => clearField(1);
}

class ReviewsByProfessorIdRequest extends $pb.GeneratedMessage {
  factory ReviewsByProfessorIdRequest({
    $core.String? id,
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

  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(_omitMessageNames ? '' : 'ReviewsByProfessorIdRequest', createEmptyInstance: create)
        ..aOS(1, _omitFieldNames ? '' : 'id')
        ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ReviewsByProfessorIdRequest clone() => ReviewsByProfessorIdRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ReviewsByProfessorIdRequest copyWith(void Function(ReviewsByProfessorIdRequest) updates) =>
      super.copyWith((message) => updates(message as ReviewsByProfessorIdRequest)) as ReviewsByProfessorIdRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReviewsByProfessorIdRequest create() => ReviewsByProfessorIdRequest._();
  ReviewsByProfessorIdRequest createEmptyInstance() => create();
  static $pb.PbList<ReviewsByProfessorIdRequest> createRepeated() => $pb.PbList<ReviewsByProfessorIdRequest>();
  @$core.pragma('dart2js:noInline')
  static ReviewsByProfessorIdRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReviewsByProfessorIdRequest>(create);
  static ReviewsByProfessorIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) {
    $_setString(0, v);
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
    $core.String? group,
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
    if (group != null) {
      $result.group = group;
    }
    return $result;
  }
  User._() : super();
  factory User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'User', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'avatar', $pb.PbFieldType.OY)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'rating', $pb.PbFieldType.O3)
    ..aOS(5, _omitFieldNames ? '' : 'group')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  User clone() => User()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  User copyWith(void Function(User) updates) => super.copyWith((message) => updates(message as User)) as User;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => $pb.PbList<User>();
  @$core.pragma('dart2js:noInline')
  static User getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
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

  @$pb.TagNumber(5)
  $core.String get group => $_getSZ(4);
  @$pb.TagNumber(5)
  set group($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasGroup() => $_has(4);
  @$pb.TagNumber(5)
  void clearGroup() => clearField(5);
}

class Group extends $pb.GeneratedMessage {
  factory Group({
    $core.String? id,
    $core.String? number,
    $core.String? professorId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (number != null) {
      $result.number = number;
    }
    if (professorId != null) {
      $result.professorId = professorId;
    }
    return $result;
  }
  Group._() : super();
  factory Group.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Group.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Group', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'number')
    ..aOS(3, _omitFieldNames ? '' : 'professorId', protoName: 'professorId')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Group clone() => Group()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Group copyWith(void Function(Group) updates) => super.copyWith((message) => updates(message as Group)) as Group;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Group create() => Group._();
  Group createEmptyInstance() => create();
  static $pb.PbList<Group> createRepeated() => $pb.PbList<Group>();
  @$core.pragma('dart2js:noInline')
  static Group getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Group>(create);
  static Group? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get number => $_getSZ(1);
  @$pb.TagNumber(2)
  set number($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get professorId => $_getSZ(2);
  @$pb.TagNumber(3)
  set professorId($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasProfessorId() => $_has(2);
  @$pb.TagNumber(3)
  void clearProfessorId() => clearField(3);
}

class Professor extends $pb.GeneratedMessage {
  factory Professor({
    $core.String? id,
    $core.String? name,
    $core.List<$core.int>? avatar,
    $core.List<$core.int>? smallAvatar,
    $core.double? rating,
    $core.int? reviewsCount,
    $core.double? objectivity,
    $core.double? loyalty,
    $core.double? professionalism,
    $core.double? harshness,
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
    if (smallAvatar != null) {
      $result.smallAvatar = smallAvatar;
    }
    if (rating != null) {
      $result.rating = rating;
    }
    if (reviewsCount != null) {
      $result.reviewsCount = reviewsCount;
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
    return $result;
  }
  Professor._() : super();
  factory Professor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Professor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Professor', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'avatar', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'smallAvatar', $pb.PbFieldType.OY, protoName: 'smallAvatar')
    ..a<$core.double>(5, _omitFieldNames ? '' : 'rating', $pb.PbFieldType.OF)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'reviewsCount', $pb.PbFieldType.O3, protoName: 'reviewsCount')
    ..a<$core.double>(7, _omitFieldNames ? '' : 'objectivity', $pb.PbFieldType.OF)
    ..a<$core.double>(8, _omitFieldNames ? '' : 'loyalty', $pb.PbFieldType.OF)
    ..a<$core.double>(9, _omitFieldNames ? '' : 'professionalism', $pb.PbFieldType.OF)
    ..a<$core.double>(10, _omitFieldNames ? '' : 'harshness', $pb.PbFieldType.OF)
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
  static Professor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Professor>(create);
  static Professor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) {
    $_setString(0, v);
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
  $core.List<$core.int> get smallAvatar => $_getN(3);
  @$pb.TagNumber(4)
  set smallAvatar($core.List<$core.int> v) {
    $_setBytes(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasSmallAvatar() => $_has(3);
  @$pb.TagNumber(4)
  void clearSmallAvatar() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get rating => $_getN(4);
  @$pb.TagNumber(5)
  set rating($core.double v) {
    $_setFloat(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasRating() => $_has(4);
  @$pb.TagNumber(5)
  void clearRating() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get reviewsCount => $_getIZ(5);
  @$pb.TagNumber(6)
  set reviewsCount($core.int v) {
    $_setSignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasReviewsCount() => $_has(5);
  @$pb.TagNumber(6)
  void clearReviewsCount() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get objectivity => $_getN(6);
  @$pb.TagNumber(7)
  set objectivity($core.double v) {
    $_setFloat(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasObjectivity() => $_has(6);
  @$pb.TagNumber(7)
  void clearObjectivity() => clearField(7);

  @$pb.TagNumber(8)
  $core.double get loyalty => $_getN(7);
  @$pb.TagNumber(8)
  set loyalty($core.double v) {
    $_setFloat(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasLoyalty() => $_has(7);
  @$pb.TagNumber(8)
  void clearLoyalty() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get professionalism => $_getN(8);
  @$pb.TagNumber(9)
  set professionalism($core.double v) {
    $_setFloat(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasProfessionalism() => $_has(8);
  @$pb.TagNumber(9)
  void clearProfessionalism() => clearField(9);

  @$pb.TagNumber(10)
  $core.double get harshness => $_getN(9);
  @$pb.TagNumber(10)
  set harshness($core.double v) {
    $_setFloat(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasHarshness() => $_has(9);
  @$pb.TagNumber(10)
  void clearHarshness() => clearField(10);
}

class Review extends $pb.GeneratedMessage {
  factory Review({
    $core.String? id,
    $core.int? userId,
    $core.String? comment,
    $core.double? objectivity,
    $core.double? loyalty,
    $core.double? professionalism,
    $core.double? harshness,
    $core.String? date,
    $core.String? professorId,
    $core.int? likes,
    $core.int? dislikes,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
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
    if (professorId != null) {
      $result.professorId = professorId;
    }
    if (likes != null) {
      $result.likes = likes;
    }
    if (dislikes != null) {
      $result.dislikes = dislikes;
    }
    return $result;
  }
  Review._() : super();
  factory Review.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Review.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Review', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3, protoName: 'userId')
    ..aOS(3, _omitFieldNames ? '' : 'comment')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'objectivity', $pb.PbFieldType.OF)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'loyalty', $pb.PbFieldType.OF)
    ..a<$core.double>(6, _omitFieldNames ? '' : 'professionalism', $pb.PbFieldType.OF)
    ..a<$core.double>(7, _omitFieldNames ? '' : 'harshness', $pb.PbFieldType.OF)
    ..aOS(8, _omitFieldNames ? '' : 'date')
    ..aOS(9, _omitFieldNames ? '' : 'professorId', protoName: 'professorId')
    ..a<$core.int>(10, _omitFieldNames ? '' : 'likes', $pb.PbFieldType.O3)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'dislikes', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Review clone() => Review()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Review copyWith(void Function(Review) updates) => super.copyWith((message) => updates(message as Review)) as Review;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Review create() => Review._();
  Review createEmptyInstance() => create();
  static $pb.PbList<Review> createRepeated() => $pb.PbList<Review>();
  @$core.pragma('dart2js:noInline')
  static Review getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Review>(create);
  static Review? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

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
  $core.String get professorId => $_getSZ(8);
  @$pb.TagNumber(9)
  set professorId($core.String v) {
    $_setString(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasProfessorId() => $_has(8);
  @$pb.TagNumber(9)
  void clearProfessorId() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get likes => $_getIZ(9);
  @$pb.TagNumber(10)
  set likes($core.int v) {
    $_setSignedInt32(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasLikes() => $_has(9);
  @$pb.TagNumber(10)
  void clearLikes() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get dislikes => $_getIZ(10);
  @$pb.TagNumber(11)
  set dislikes($core.int v) {
    $_setSignedInt32(10, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasDislikes() => $_has(10);
  @$pb.TagNumber(11)
  void clearDislikes() => clearField(11);
}

class Reaction extends $pb.GeneratedMessage {
  factory Reaction({
    $core.String? id,
    $core.int? userId,
    $core.String? professorId,
    $core.String? reviewId,
    $core.int? type,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (professorId != null) {
      $result.professorId = professorId;
    }
    if (reviewId != null) {
      $result.reviewId = reviewId;
    }
    if (type != null) {
      $result.type = type;
    }
    return $result;
  }
  Reaction._() : super();
  factory Reaction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Reaction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Reaction', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3, protoName: 'userId')
    ..aOS(3, _omitFieldNames ? '' : 'professorId', protoName: 'professorId')
    ..aOS(4, _omitFieldNames ? '' : 'reviewId', protoName: 'reviewId')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Reaction clone() => Reaction()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Reaction copyWith(void Function(Reaction) updates) =>
      super.copyWith((message) => updates(message as Reaction)) as Reaction;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Reaction create() => Reaction._();
  Reaction createEmptyInstance() => create();
  static $pb.PbList<Reaction> createRepeated() => $pb.PbList<Reaction>();
  @$core.pragma('dart2js:noInline')
  static Reaction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Reaction>(create);
  static Reaction? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

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
  $core.String get professorId => $_getSZ(2);
  @$pb.TagNumber(3)
  set professorId($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasProfessorId() => $_has(2);
  @$pb.TagNumber(3)
  void clearProfessorId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get reviewId => $_getSZ(3);
  @$pb.TagNumber(4)
  set reviewId($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasReviewId() => $_has(3);
  @$pb.TagNumber(4)
  void clearReviewId() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get type => $_getIZ(4);
  @$pb.TagNumber(5)
  set type($core.int v) {
    $_setSignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasType() => $_has(4);
  @$pb.TagNumber(5)
  void clearType() => clearField(5);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
