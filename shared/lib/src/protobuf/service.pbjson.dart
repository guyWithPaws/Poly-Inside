//
//  Generated code. Do not modify.
//  source: service.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use listProfessorsByGroupResponceDescriptor instead')
const ListProfessorsByGroupResponce$json = {
  '1': 'ListProfessorsByGroupResponce',
  '2': [
    {
      '1': 'professors',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.Professor',
      '10': 'professors'
    },
  ],
};

/// Descriptor for `ListProfessorsByGroupResponce`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listProfessorsByGroupResponceDescriptor =
    $convert.base64Decode(
        'Ch1MaXN0UHJvZmVzc29yc0J5R3JvdXBSZXNwb25jZRIqCgpwcm9mZXNzb3JzGAEgAygLMgouUH'
        'JvZmVzc29yUgpwcm9mZXNzb3Jz');

@$core.Deprecated('Use groupListRequestDescriptor instead')
const GroupListRequest$json = {
  '1': 'GroupListRequest',
  '2': [
    {'1': 'count', '3': 1, '4': 1, '5': 5, '10': 'count'},
    {'1': 'group', '3': 2, '4': 1, '5': 9, '10': 'group'},
  ],
};

/// Descriptor for `GroupListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupListRequestDescriptor = $convert.base64Decode(
    'ChBHcm91cExpc3RSZXF1ZXN0EhQKBWNvdW50GAEgASgFUgVjb3VudBIUCgVncm91cBgCIAEoCV'
    'IFZ3JvdXA=');

@$core.Deprecated('Use groupsNumbersResponceDescriptor instead')
const GroupsNumbersResponce$json = {
  '1': 'GroupsNumbersResponce',
  '2': [
    {'1': 'groupsNumbers', '3': 1, '4': 3, '5': 9, '10': 'groupsNumbers'},
  ],
};

/// Descriptor for `GroupsNumbersResponce`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupsNumbersResponceDescriptor = $convert.base64Decode(
    'ChVHcm91cHNOdW1iZXJzUmVzcG9uY2USJAoNZ3JvdXBzTnVtYmVycxgBIAMoCVINZ3JvdXBzTn'
    'VtYmVycw==');

@$core.Deprecated('Use getGroupsNumbersRequestDescriptor instead')
const GetGroupsNumbersRequest$json = {
  '1': 'GetGroupsNumbersRequest',
  '2': [
    {'1': 'groupPattern', '3': 1, '4': 1, '5': 9, '10': 'groupPattern'},
    {'1': 'count', '3': 2, '4': 1, '5': 5, '10': 'count'},
  ],
};

/// Descriptor for `GetGroupsNumbersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getGroupsNumbersRequestDescriptor =
    $convert.base64Decode(
        'ChdHZXRHcm91cHNOdW1iZXJzUmVxdWVzdBIiCgxncm91cFBhdHRlcm4YASABKAlSDGdyb3VwUG'
        'F0dGVybhIUCgVjb3VudBgCIAEoBVIFY291bnQ=');

@$core.Deprecated('Use changeGroupNumberRequestDescriptor instead')
const ChangeGroupNumberRequest$json = {
  '1': 'ChangeGroupNumberRequest',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'newGroupNumber', '3': 2, '4': 1, '5': 9, '10': 'newGroupNumber'},
  ],
};

/// Descriptor for `ChangeGroupNumberRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changeGroupNumberRequestDescriptor =
    $convert.base64Decode(
        'ChhDaGFuZ2VHcm91cE51bWJlclJlcXVlc3QSFgoGdXNlcklkGAEgASgFUgZ1c2VySWQSJgoObm'
        'V3R3JvdXBOdW1iZXIYAiABKAlSDm5ld0dyb3VwTnVtYmVy');

@$core.Deprecated('Use updateUserNameRequestDescriptor instead')
const UpdateUserNameRequest$json = {
  '1': 'UpdateUserNameRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'newUserName', '3': 2, '4': 1, '5': 9, '10': 'newUserName'},
  ],
};

/// Descriptor for `UpdateUserNameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserNameRequestDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVVc2VyTmFtZVJlcXVlc3QSDgoCaWQYASABKAVSAmlkEiAKC25ld1VzZXJOYW1lGA'
    'IgASgJUgtuZXdVc2VyTmFtZQ==');

@$core.Deprecated('Use getListGroupsResponceDescriptor instead')
const GetListGroupsResponce$json = {
  '1': 'GetListGroupsResponce',
  '2': [
    {
      '1': 'groups',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.GroupNumber',
      '10': 'groups'
    },
  ],
};

/// Descriptor for `GetListGroupsResponce`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getListGroupsResponceDescriptor = $convert.base64Decode(
    'ChVHZXRMaXN0R3JvdXBzUmVzcG9uY2USJAoGZ3JvdXBzGAEgAygLMgwuR3JvdXBOdW1iZXJSBm'
    'dyb3Vwcw==');

@$core.Deprecated('Use reviewWithProfessorResponseDescriptor instead')
const ReviewWithProfessorResponse$json = {
  '1': 'ReviewWithProfessorResponse',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.ReviewWithProfessor',
      '10': 'list'
    },
  ],
};

/// Descriptor for `ReviewWithProfessorResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reviewWithProfessorResponseDescriptor =
    $convert.base64Decode(
        'ChtSZXZpZXdXaXRoUHJvZmVzc29yUmVzcG9uc2USKAoEbGlzdBgBIAMoCzIULlJldmlld1dpdG'
        'hQcm9mZXNzb3JSBGxpc3Q=');

@$core.Deprecated('Use reviewWithUserResponseDescriptor instead')
const ReviewWithUserResponse$json = {
  '1': 'ReviewWithUserResponse',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.ReviewWithUser',
      '10': 'list'
    },
  ],
};

/// Descriptor for `ReviewWithUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reviewWithUserResponseDescriptor =
    $convert.base64Decode(
        'ChZSZXZpZXdXaXRoVXNlclJlc3BvbnNlEiMKBGxpc3QYASADKAsyDy5SZXZpZXdXaXRoVXNlcl'
        'IEbGlzdA==');

@$core.Deprecated('Use findProfessorResponseDescriptor instead')
const FindProfessorResponse$json = {
  '1': 'FindProfessorResponse',
  '2': [
    {
      '1': 'professors',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.Professor',
      '10': 'professors'
    },
  ],
};

/// Descriptor for `FindProfessorResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List findProfessorResponseDescriptor = $convert.base64Decode(
    'ChVGaW5kUHJvZmVzc29yUmVzcG9uc2USKgoKcHJvZmVzc29ycxgBIAMoCzIKLlByb2Zlc3Nvcl'
    'IKcHJvZmVzc29ycw==');

@$core.Deprecated('Use listProfessorsByGroupRequestDescriptor instead')
const ListProfessorsByGroupRequest$json = {
  '1': 'ListProfessorsByGroupRequest',
  '2': [
    {'1': 'count', '3': 1, '4': 1, '5': 5, '10': 'count'},
    {'1': 'group', '3': 2, '4': 1, '5': 9, '10': 'group'},
  ],
};

/// Descriptor for `ListProfessorsByGroupRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listProfessorsByGroupRequestDescriptor =
    $convert.base64Decode(
        'ChxMaXN0UHJvZmVzc29yc0J5R3JvdXBSZXF1ZXN0EhQKBWNvdW50GAEgASgFUgVjb3VudBIUCg'
        'Vncm91cBgCIAEoCVIFZ3JvdXA=');

@$core.Deprecated('Use reviewWithUserDescriptor instead')
const ReviewWithUser$json = {
  '1': 'ReviewWithUser',
  '2': [
    {'1': 'review', '3': 1, '4': 1, '5': 11, '6': '.Review', '10': 'review'},
    {'1': 'user', '3': 2, '4': 1, '5': 11, '6': '.User', '10': 'user'},
    {
      '1': 'reaction',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Reaction',
      '10': 'reaction'
    },
  ],
};

/// Descriptor for `ReviewWithUser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reviewWithUserDescriptor = $convert.base64Decode(
    'Cg5SZXZpZXdXaXRoVXNlchIfCgZyZXZpZXcYASABKAsyBy5SZXZpZXdSBnJldmlldxIZCgR1c2'
    'VyGAIgASgLMgUuVXNlclIEdXNlchIlCghyZWFjdGlvbhgDIAEoCzIJLlJlYWN0aW9uUghyZWFj'
    'dGlvbg==');

@$core.Deprecated('Use reviewWithProfessorDescriptor instead')
const ReviewWithProfessor$json = {
  '1': 'ReviewWithProfessor',
  '2': [
    {'1': 'review', '3': 1, '4': 1, '5': 11, '6': '.Review', '10': 'review'},
    {
      '1': 'professor',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Professor',
      '10': 'professor'
    },
    {
      '1': 'reaction',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Reaction',
      '10': 'reaction'
    },
  ],
};

/// Descriptor for `ReviewWithProfessor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reviewWithProfessorDescriptor = $convert.base64Decode(
    'ChNSZXZpZXdXaXRoUHJvZmVzc29yEh8KBnJldmlldxgBIAEoCzIHLlJldmlld1IGcmV2aWV3Ei'
    'gKCXByb2Zlc3NvchgCIAEoCzIKLlByb2Zlc3NvclIJcHJvZmVzc29yEiUKCHJlYWN0aW9uGAMg'
    'ASgLMgkuUmVhY3Rpb25SCHJlYWN0aW9u');

@$core.Deprecated('Use reactionResponseDescriptor instead')
const ReactionResponse$json = {
  '1': 'ReactionResponse',
};

/// Descriptor for `ReactionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reactionResponseDescriptor =
    $convert.base64Decode('ChBSZWFjdGlvblJlc3BvbnNl');

@$core.Deprecated('Use changeGroupNumberResponceDescriptor instead')
const ChangeGroupNumberResponce$json = {
  '1': 'ChangeGroupNumberResponce',
};

/// Descriptor for `ChangeGroupNumberResponce`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changeGroupNumberResponceDescriptor =
    $convert.base64Decode('ChlDaGFuZ2VHcm91cE51bWJlclJlc3BvbmNl');

@$core.Deprecated('Use deleteReactionRequestDescriptor instead')
const DeleteReactionRequest$json = {
  '1': 'DeleteReactionRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteReactionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteReactionRequestDescriptor = $convert
    .base64Decode('ChVEZWxldGVSZWFjdGlvblJlcXVlc3QSDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use reviewStreamDescriptor instead')
const ReviewStream$json = {
  '1': 'ReviewStream',
  '2': [
    {'1': 'reviews', '3': 1, '4': 3, '5': 11, '6': '.Review', '10': 'reviews'},
  ],
};

/// Descriptor for `ReviewStream`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reviewStreamDescriptor = $convert.base64Decode(
    'CgxSZXZpZXdTdHJlYW0SIQoHcmV2aWV3cxgBIAMoCzIHLlJldmlld1IHcmV2aWV3cw==');

@$core.Deprecated('Use searchResponseDescriptor instead')
const SearchResponse$json = {
  '1': 'SearchResponse',
  '2': [
    {
      '1': 'professors',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.Professor',
      '10': 'professors'
    },
  ],
};

/// Descriptor for `SearchResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchResponseDescriptor = $convert.base64Decode(
    'Cg5TZWFyY2hSZXNwb25zZRIqCgpwcm9mZXNzb3JzGAEgAygLMgouUHJvZmVzc29yUgpwcm9mZX'
    'Nzb3Jz');

@$core.Deprecated('Use searchRequestDescriptor instead')
const SearchRequest$json = {
  '1': 'SearchRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'count', '3': 2, '4': 1, '5': 5, '10': 'count'},
  ],
};

/// Descriptor for `SearchRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchRequestDescriptor = $convert.base64Decode(
    'Cg1TZWFyY2hSZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUSFAoFY291bnQYAiABKAVSBWNvdW'
    '50');

@$core.Deprecated('Use getAllProfessorsOnceRequestDescriptor instead')
const GetAllProfessorsOnceRequest$json = {
  '1': 'GetAllProfessorsOnceRequest',
};

/// Descriptor for `GetAllProfessorsOnceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllProfessorsOnceRequestDescriptor =
    $convert.base64Decode('ChtHZXRBbGxQcm9mZXNzb3JzT25jZVJlcXVlc3Q=');

@$core.Deprecated('Use getListProfessorResponseDescriptor instead')
const GetListProfessorResponse$json = {
  '1': 'GetListProfessorResponse',
  '2': [
    {
      '1': 'professors',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.Professor',
      '10': 'professors'
    },
  ],
};

/// Descriptor for `GetListProfessorResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getListProfessorResponseDescriptor =
    $convert.base64Decode(
        'ChhHZXRMaXN0UHJvZmVzc29yUmVzcG9uc2USKgoKcHJvZmVzc29ycxgBIAMoCzIKLlByb2Zlc3'
        'NvclIKcHJvZmVzc29ycw==');

@$core.Deprecated('Use deleteReviewRequestDescriptor instead')
const DeleteReviewRequest$json = {
  '1': 'DeleteReviewRequest',
  '2': [
    {'1': 'reviewId', '3': 1, '4': 1, '5': 9, '10': 'reviewId'},
  ],
};

/// Descriptor for `DeleteReviewRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteReviewRequestDescriptor =
    $convert.base64Decode(
        'ChNEZWxldGVSZXZpZXdSZXF1ZXN0EhoKCHJldmlld0lkGAEgASgJUghyZXZpZXdJZA==');

@$core.Deprecated('Use addProfileResponseDescriptor instead')
const AddProfileResponse$json = {
  '1': 'AddProfileResponse',
};

/// Descriptor for `AddProfileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addProfileResponseDescriptor =
    $convert.base64Decode('ChJBZGRQcm9maWxlUmVzcG9uc2U=');

@$core.Deprecated('Use deleteReviewResponseDescriptor instead')
const DeleteReviewResponse$json = {
  '1': 'DeleteReviewResponse',
};

/// Descriptor for `DeleteReviewResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteReviewResponseDescriptor =
    $convert.base64Decode('ChREZWxldGVSZXZpZXdSZXNwb25zZQ==');

@$core.Deprecated('Use updateReviewResponseDescriptor instead')
const UpdateReviewResponse$json = {
  '1': 'UpdateReviewResponse',
  '2': [
    {'1': 'passed', '3': 1, '4': 1, '5': 8, '10': 'passed'},
  ],
};

/// Descriptor for `UpdateReviewResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateReviewResponseDescriptor =
    $convert.base64Decode(
        'ChRVcGRhdGVSZXZpZXdSZXNwb25zZRIWCgZwYXNzZWQYASABKAhSBnBhc3NlZA==');

@$core.Deprecated('Use updateProfileResponseDescriptor instead')
const UpdateProfileResponse$json = {
  '1': 'UpdateProfileResponse',
};

/// Descriptor for `UpdateProfileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateProfileResponseDescriptor =
    $convert.base64Decode('ChVVcGRhdGVQcm9maWxlUmVzcG9uc2U=');

@$core.Deprecated('Use updateUserNameResponceDescriptor instead')
const UpdateUserNameResponce$json = {
  '1': 'UpdateUserNameResponce',
};

/// Descriptor for `UpdateUserNameResponce`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserNameResponceDescriptor =
    $convert.base64Decode('ChZVcGRhdGVVc2VyTmFtZVJlc3BvbmNl');

@$core.Deprecated('Use changeStatusRequestDescriptor instead')
const ChangeStatusRequest$json = {
  '1': 'ChangeStatusRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `ChangeStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changeStatusRequestDescriptor = $convert.base64Decode(
    'ChNDaGFuZ2VTdGF0dXNSZXF1ZXN0Eg4KAmlkGAEgASgFUgJpZBIWCgZzdGF0dXMYAiABKAlSBn'
    'N0YXR1cw==');

@$core.Deprecated('Use userInfoByUserIdRequestDescriptor instead')
const UserInfoByUserIdRequest$json = {
  '1': 'UserInfoByUserIdRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `UserInfoByUserIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userInfoByUserIdRequestDescriptor = $convert
    .base64Decode('ChdVc2VySW5mb0J5VXNlcklkUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');

@$core.Deprecated('Use addReviewResponseDescriptor instead')
const AddReviewResponse$json = {
  '1': 'AddReviewResponse',
  '2': [
    {'1': 'passed', '3': 1, '4': 1, '5': 8, '10': 'passed'},
  ],
};

/// Descriptor for `AddReviewResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addReviewResponseDescriptor = $convert.base64Decode(
    'ChFBZGRSZXZpZXdSZXNwb25zZRIWCgZwYXNzZWQYASABKAhSBnBhc3NlZA==');

@$core.Deprecated('Use reviewsByUserIdRequestDescriptor instead')
const ReviewsByUserIdRequest$json = {
  '1': 'ReviewsByUserIdRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `ReviewsByUserIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reviewsByUserIdRequestDescriptor = $convert
    .base64Decode('ChZSZXZpZXdzQnlVc2VySWRSZXF1ZXN0Eg4KAmlkGAEgASgFUgJpZA==');

@$core.Deprecated('Use listProfessorRequestDescriptor instead')
const ListProfessorRequest$json = {
  '1': 'ListProfessorRequest',
  '2': [
    {'1': 'count', '3': 1, '4': 1, '5': 5, '10': 'count'},
  ],
};

/// Descriptor for `ListProfessorRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listProfessorRequestDescriptor =
    $convert.base64Decode(
        'ChRMaXN0UHJvZmVzc29yUmVxdWVzdBIUCgVjb3VudBgBIAEoBVIFY291bnQ=');

@$core.Deprecated('Use reviewsByProfessorIdRequestDescriptor instead')
const ReviewsByProfessorIdRequest$json = {
  '1': 'ReviewsByProfessorIdRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `ReviewsByProfessorIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reviewsByProfessorIdRequestDescriptor =
    $convert.base64Decode(
        'ChtSZXZpZXdzQnlQcm9mZXNzb3JJZFJlcXVlc3QSDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use userDescriptor instead')
const User$json = {
  '1': 'User',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'avatar', '3': 3, '4': 1, '5': 12, '10': 'avatar'},
    {'1': 'rating', '3': 4, '4': 1, '5': 5, '10': 'rating'},
    {'1': 'group', '3': 5, '4': 1, '5': 9, '10': 'group'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhYKBmF2YXRhchgDIA'
    'EoDFIGYXZhdGFyEhYKBnJhdGluZxgEIAEoBVIGcmF0aW5nEhQKBWdyb3VwGAUgASgJUgVncm91'
    'cA==');

@$core.Deprecated('Use groupDescriptor instead')
const Group$json = {
  '1': 'Group',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'number', '3': 2, '4': 1, '5': 9, '10': 'number'},
    {'1': 'professorId', '3': 3, '4': 1, '5': 9, '10': 'professorId'},
  ],
};

/// Descriptor for `Group`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupDescriptor = $convert.base64Decode(
    'CgVHcm91cBIOCgJpZBgBIAEoCVICaWQSFgoGbnVtYmVyGAIgASgJUgZudW1iZXISIAoLcHJvZm'
    'Vzc29ySWQYAyABKAlSC3Byb2Zlc3Nvcklk');

@$core.Deprecated('Use groupNumberDescriptor instead')
const GroupNumber$json = {
  '1': 'GroupNumber',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'number', '3': 2, '4': 1, '5': 9, '10': 'number'},
  ],
};

/// Descriptor for `GroupNumber`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupNumberDescriptor = $convert.base64Decode(
    'CgtHcm91cE51bWJlchIOCgJpZBgBIAEoCVICaWQSFgoGbnVtYmVyGAIgASgJUgZudW1iZXI=');

@$core.Deprecated('Use professorDescriptor instead')
const Professor$json = {
  '1': 'Professor',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'avatar', '3': 3, '4': 1, '5': 12, '10': 'avatar'},
    {'1': 'smallAvatar', '3': 4, '4': 1, '5': 12, '10': 'smallAvatar'},
    {'1': 'rating', '3': 5, '4': 1, '5': 2, '10': 'rating'},
    {'1': 'reviewsCount', '3': 6, '4': 1, '5': 5, '10': 'reviewsCount'},
    {'1': 'objectivity', '3': 7, '4': 1, '5': 2, '10': 'objectivity'},
    {'1': 'loyalty', '3': 8, '4': 1, '5': 2, '10': 'loyalty'},
    {'1': 'professionalism', '3': 9, '4': 1, '5': 2, '10': 'professionalism'},
    {'1': 'harshness', '3': 10, '4': 1, '5': 2, '10': 'harshness'},
  ],
};

/// Descriptor for `Professor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List professorDescriptor = $convert.base64Decode(
    'CglQcm9mZXNzb3ISDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSFgoGYXZhdG'
    'FyGAMgASgMUgZhdmF0YXISIAoLc21hbGxBdmF0YXIYBCABKAxSC3NtYWxsQXZhdGFyEhYKBnJh'
    'dGluZxgFIAEoAlIGcmF0aW5nEiIKDHJldmlld3NDb3VudBgGIAEoBVIMcmV2aWV3c0NvdW50Ei'
    'AKC29iamVjdGl2aXR5GAcgASgCUgtvYmplY3Rpdml0eRIYCgdsb3lhbHR5GAggASgCUgdsb3lh'
    'bHR5EigKD3Byb2Zlc3Npb25hbGlzbRgJIAEoAlIPcHJvZmVzc2lvbmFsaXNtEhwKCWhhcnNobm'
    'VzcxgKIAEoAlIJaGFyc2huZXNz');

@$core.Deprecated('Use reviewDescriptor instead')
const Review$json = {
  '1': 'Review',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'userId', '3': 2, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'comment', '3': 3, '4': 1, '5': 9, '10': 'comment'},
    {'1': 'objectivity', '3': 4, '4': 1, '5': 2, '10': 'objectivity'},
    {'1': 'loyalty', '3': 5, '4': 1, '5': 2, '10': 'loyalty'},
    {'1': 'professionalism', '3': 6, '4': 1, '5': 2, '10': 'professionalism'},
    {'1': 'harshness', '3': 7, '4': 1, '5': 2, '10': 'harshness'},
    {'1': 'date', '3': 8, '4': 1, '5': 9, '10': 'date'},
    {'1': 'professorId', '3': 9, '4': 1, '5': 9, '10': 'professorId'},
    {'1': 'likes', '3': 10, '4': 1, '5': 5, '10': 'likes'},
    {'1': 'dislikes', '3': 11, '4': 1, '5': 5, '10': 'dislikes'},
    {
      '1': 'currentUserReaction',
      '3': 12,
      '4': 1,
      '5': 5,
      '10': 'currentUserReaction'
    },
    {
      '1': 'currentUserReactionLink',
      '3': 13,
      '4': 1,
      '5': 9,
      '10': 'currentUserReactionLink'
    },
  ],
};

/// Descriptor for `Review`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reviewDescriptor = $convert.base64Decode(
    'CgZSZXZpZXcSDgoCaWQYASABKAlSAmlkEhYKBnVzZXJJZBgCIAEoBVIGdXNlcklkEhgKB2NvbW'
    '1lbnQYAyABKAlSB2NvbW1lbnQSIAoLb2JqZWN0aXZpdHkYBCABKAJSC29iamVjdGl2aXR5EhgK'
    'B2xveWFsdHkYBSABKAJSB2xveWFsdHkSKAoPcHJvZmVzc2lvbmFsaXNtGAYgASgCUg9wcm9mZX'
    'NzaW9uYWxpc20SHAoJaGFyc2huZXNzGAcgASgCUgloYXJzaG5lc3MSEgoEZGF0ZRgIIAEoCVIE'
    'ZGF0ZRIgCgtwcm9mZXNzb3JJZBgJIAEoCVILcHJvZmVzc29ySWQSFAoFbGlrZXMYCiABKAVSBW'
    'xpa2VzEhoKCGRpc2xpa2VzGAsgASgFUghkaXNsaWtlcxIwChNjdXJyZW50VXNlclJlYWN0aW9u'
    'GAwgASgFUhNjdXJyZW50VXNlclJlYWN0aW9uEjgKF2N1cnJlbnRVc2VyUmVhY3Rpb25MaW5rGA'
    '0gASgJUhdjdXJyZW50VXNlclJlYWN0aW9uTGluaw==');

@$core.Deprecated('Use reactionDescriptor instead')
const Reaction$json = {
  '1': 'Reaction',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'userId', '3': 2, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'professorId', '3': 3, '4': 1, '5': 9, '10': 'professorId'},
    {'1': 'reviewId', '3': 4, '4': 1, '5': 9, '10': 'reviewId'},
    {'1': 'type', '3': 5, '4': 1, '5': 5, '10': 'type'},
  ],
};

/// Descriptor for `Reaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reactionDescriptor = $convert.base64Decode(
    'CghSZWFjdGlvbhIOCgJpZBgBIAEoCVICaWQSFgoGdXNlcklkGAIgASgFUgZ1c2VySWQSIAoLcH'
    'JvZmVzc29ySWQYAyABKAlSC3Byb2Zlc3NvcklkEhoKCHJldmlld0lkGAQgASgJUghyZXZpZXdJ'
    'ZBISCgR0eXBlGAUgASgFUgR0eXBl');
