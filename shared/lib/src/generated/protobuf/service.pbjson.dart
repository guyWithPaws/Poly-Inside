//
//  Generated code. Do not modify.
//  source: protobuf/service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

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
    {'1': 'professors', '3': 1, '4': 3, '5': 11, '6': '.Professor', '10': 'professors'},
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
final $typed_data.Uint8List getAllProfessorsOnceRequestDescriptor = $convert.base64Decode(
    'ChtHZXRBbGxQcm9mZXNzb3JzT25jZVJlcXVlc3Q=');

@$core.Deprecated('Use getListProfessorResponseDescriptor instead')
const GetListProfessorResponse$json = {
  '1': 'GetListProfessorResponse',
  '2': [
    {'1': 'professors', '3': 1, '4': 3, '5': 11, '6': '.Professor', '10': 'professors'},
  ],
};

/// Descriptor for `GetListProfessorResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getListProfessorResponseDescriptor = $convert.base64Decode(
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
final $typed_data.Uint8List deleteReviewRequestDescriptor = $convert.base64Decode(
    'ChNEZWxldGVSZXZpZXdSZXF1ZXN0EhoKCHJldmlld0lkGAEgASgJUghyZXZpZXdJZA==');

@$core.Deprecated('Use addProfileResponseDescriptor instead')
const AddProfileResponse$json = {
  '1': 'AddProfileResponse',
};

/// Descriptor for `AddProfileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addProfileResponseDescriptor = $convert.base64Decode(
    'ChJBZGRQcm9maWxlUmVzcG9uc2U=');

@$core.Deprecated('Use deleteReviewResponseDescriptor instead')
const DeleteReviewResponse$json = {
  '1': 'DeleteReviewResponse',
};

/// Descriptor for `DeleteReviewResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteReviewResponseDescriptor = $convert.base64Decode(
    'ChREZWxldGVSZXZpZXdSZXNwb25zZQ==');

@$core.Deprecated('Use updateReviewResponseDescriptor instead')
const UpdateReviewResponse$json = {
  '1': 'UpdateReviewResponse',
};

/// Descriptor for `UpdateReviewResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateReviewResponseDescriptor = $convert.base64Decode(
    'ChRVcGRhdGVSZXZpZXdSZXNwb25zZQ==');

@$core.Deprecated('Use updateProfileResponseDescriptor instead')
const UpdateProfileResponse$json = {
  '1': 'UpdateProfileResponse',
};

/// Descriptor for `UpdateProfileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateProfileResponseDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVQcm9maWxlUmVzcG9uc2U=');

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
final $typed_data.Uint8List userInfoByUserIdRequestDescriptor = $convert.base64Decode(
    'ChdVc2VySW5mb0J5VXNlcklkUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');

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
final $typed_data.Uint8List reviewsByUserIdRequestDescriptor = $convert.base64Decode(
    'ChZSZXZpZXdzQnlVc2VySWRSZXF1ZXN0Eg4KAmlkGAEgASgFUgJpZA==');

@$core.Deprecated('Use listProfessorRequestDescriptor instead')
const ListProfessorRequest$json = {
  '1': 'ListProfessorRequest',
  '2': [
    {'1': 'count', '3': 1, '4': 1, '5': 5, '10': 'count'},
  ],
};

/// Descriptor for `ListProfessorRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listProfessorRequestDescriptor = $convert.base64Decode(
    'ChRMaXN0UHJvZmVzc29yUmVxdWVzdBIUCgVjb3VudBgBIAEoBVIFY291bnQ=');

@$core.Deprecated('Use reviewsByProfessorIdRequestDescriptor instead')
const ReviewsByProfessorIdRequest$json = {
  '1': 'ReviewsByProfessorIdRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `ReviewsByProfessorIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reviewsByProfessorIdRequestDescriptor = $convert.base64Decode(
    'ChtSZXZpZXdzQnlQcm9mZXNzb3JJZFJlcXVlc3QSDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use userDescriptor instead')
const User$json = {
  '1': 'User',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'avatar', '3': 3, '4': 1, '5': 12, '10': 'avatar'},
    {'1': 'rating', '3': 4, '4': 1, '5': 5, '10': 'rating'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhYKBmF2YXRhchgDIA'
    'EoDFIGYXZhdGFyEhYKBnJhdGluZxgEIAEoBVIGcmF0aW5n');

@$core.Deprecated('Use professorDescriptor instead')
const Professor$json = {
  '1': 'Professor',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'avatar', '3': 3, '4': 1, '5': 12, '10': 'avatar'},
    {'1': 'rating', '3': 4, '4': 1, '5': 2, '10': 'rating'},
    {'1': 'reviews_count', '3': 5, '4': 1, '5': 5, '10': 'reviewsCount'},
    {'1': 'objectivity', '3': 6, '4': 1, '5': 2, '10': 'objectivity'},
    {'1': 'loyalty', '3': 7, '4': 1, '5': 2, '10': 'loyalty'},
    {'1': 'professionalism', '3': 8, '4': 1, '5': 2, '10': 'professionalism'},
    {'1': 'harshness', '3': 9, '4': 1, '5': 2, '10': 'harshness'},
  ],
};

/// Descriptor for `Professor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List professorDescriptor = $convert.base64Decode(
    'CglQcm9mZXNzb3ISDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSFgoGYXZhdG'
    'FyGAMgASgMUgZhdmF0YXISFgoGcmF0aW5nGAQgASgCUgZyYXRpbmcSIwoNcmV2aWV3c19jb3Vu'
    'dBgFIAEoBVIMcmV2aWV3c0NvdW50EiAKC29iamVjdGl2aXR5GAYgASgCUgtvYmplY3Rpdml0eR'
    'IYCgdsb3lhbHR5GAcgASgCUgdsb3lhbHR5EigKD3Byb2Zlc3Npb25hbGlzbRgIIAEoAlIPcHJv'
    'ZmVzc2lvbmFsaXNtEhwKCWhhcnNobmVzcxgJIAEoAlIJaGFyc2huZXNz');

@$core.Deprecated('Use reviewDescriptor instead')
const Review$json = {
  '1': 'Review',
  '2': [
    {'1': 'review_id', '3': 1, '4': 1, '5': 9, '10': 'reviewId'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'comment', '3': 3, '4': 1, '5': 9, '10': 'comment'},
    {'1': 'objectivity', '3': 4, '4': 1, '5': 2, '10': 'objectivity'},
    {'1': 'loyalty', '3': 5, '4': 1, '5': 2, '10': 'loyalty'},
    {'1': 'professionalism', '3': 6, '4': 1, '5': 2, '10': 'professionalism'},
    {'1': 'harshness', '3': 7, '4': 1, '5': 2, '10': 'harshness'},
    {'1': 'date', '3': 8, '4': 1, '5': 9, '10': 'date'},
    {'1': 'professor_id', '3': 9, '4': 1, '5': 9, '10': 'professorId'},
    {'1': 'likes', '3': 10, '4': 1, '5': 5, '10': 'likes'},
    {'1': 'dislikes', '3': 11, '4': 1, '5': 5, '10': 'dislikes'},
  ],
};

/// Descriptor for `Review`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reviewDescriptor = $convert.base64Decode(
    'CgZSZXZpZXcSGwoJcmV2aWV3X2lkGAEgASgJUghyZXZpZXdJZBIXCgd1c2VyX2lkGAIgASgFUg'
    'Z1c2VySWQSGAoHY29tbWVudBgDIAEoCVIHY29tbWVudBIgCgtvYmplY3Rpdml0eRgEIAEoAlIL'
    'b2JqZWN0aXZpdHkSGAoHbG95YWx0eRgFIAEoAlIHbG95YWx0eRIoCg9wcm9mZXNzaW9uYWxpc2'
    '0YBiABKAJSD3Byb2Zlc3Npb25hbGlzbRIcCgloYXJzaG5lc3MYByABKAJSCWhhcnNobmVzcxIS'
    'CgRkYXRlGAggASgJUgRkYXRlEiEKDHByb2Zlc3Nvcl9pZBgJIAEoCVILcHJvZmVzc29ySWQSFA'
    'oFbGlrZXMYCiABKAVSBWxpa2VzEhoKCGRpc2xpa2VzGAsgASgFUghkaXNsaWtlcw==');

