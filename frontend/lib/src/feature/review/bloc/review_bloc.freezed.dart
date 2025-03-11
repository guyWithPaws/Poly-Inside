// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReviewDataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() processing,
    required TResult Function(Object e, String description) error,
    required TResult Function() approved,
    required TResult Function() rejected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function(Object e, String description)? error,
    TResult? Function()? approved,
    TResult? Function()? rejected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function(Object e, String description)? error,
    TResult Function()? approved,
    TResult Function()? rejected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProcessingState value) processing,
    required TResult Function(ErrorState value) error,
    required TResult Function(ApprovedState value) approved,
    required TResult Function(RejectedState value) rejected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProcessingState value)? processing,
    TResult? Function(ErrorState value)? error,
    TResult? Function(ApprovedState value)? approved,
    TResult? Function(RejectedState value)? rejected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProcessingState value)? processing,
    TResult Function(ErrorState value)? error,
    TResult Function(ApprovedState value)? approved,
    TResult Function(RejectedState value)? rejected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewDataStateCopyWith<$Res> {
  factory $ReviewDataStateCopyWith(
          ReviewDataState value, $Res Function(ReviewDataState) then) =
      _$ReviewDataStateCopyWithImpl<$Res, ReviewDataState>;
}

/// @nodoc
class _$ReviewDataStateCopyWithImpl<$Res, $Val extends ReviewDataState>
    implements $ReviewDataStateCopyWith<$Res> {
  _$ReviewDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewDataState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProcessingStateImplCopyWith<$Res> {
  factory _$$ProcessingStateImplCopyWith(_$ProcessingStateImpl value,
          $Res Function(_$ProcessingStateImpl) then) =
      __$$ProcessingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProcessingStateImplCopyWithImpl<$Res>
    extends _$ReviewDataStateCopyWithImpl<$Res, _$ProcessingStateImpl>
    implements _$$ProcessingStateImplCopyWith<$Res> {
  __$$ProcessingStateImplCopyWithImpl(
      _$ProcessingStateImpl _value, $Res Function(_$ProcessingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReviewDataState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProcessingStateImpl extends ProcessingState {
  const _$ProcessingStateImpl() : super._();

  @override
  String toString() {
    return 'ReviewDataState.processing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProcessingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() processing,
    required TResult Function(Object e, String description) error,
    required TResult Function() approved,
    required TResult Function() rejected,
  }) {
    return processing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function(Object e, String description)? error,
    TResult? Function()? approved,
    TResult? Function()? rejected,
  }) {
    return processing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function(Object e, String description)? error,
    TResult Function()? approved,
    TResult Function()? rejected,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProcessingState value) processing,
    required TResult Function(ErrorState value) error,
    required TResult Function(ApprovedState value) approved,
    required TResult Function(RejectedState value) rejected,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProcessingState value)? processing,
    TResult? Function(ErrorState value)? error,
    TResult? Function(ApprovedState value)? approved,
    TResult? Function(RejectedState value)? rejected,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProcessingState value)? processing,
    TResult Function(ErrorState value)? error,
    TResult Function(ApprovedState value)? approved,
    TResult Function(RejectedState value)? rejected,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class ProcessingState extends ReviewDataState {
  const factory ProcessingState() = _$ProcessingStateImpl;
  const ProcessingState._() : super._();
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object e, String description});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$ReviewDataStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReviewDataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
    Object? description = null,
  }) {
    return _then(_$ErrorStateImpl(
      null == e ? _value.e : e,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl extends ErrorState {
  const _$ErrorStateImpl(this.e, this.description) : super._();

  @override
  final Object e;
  @override
  final String description;

  @override
  String toString() {
    return 'ReviewDataState.error(e: $e, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            const DeepCollectionEquality().equals(other.e, e) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(e), description);

  /// Create a copy of ReviewDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() processing,
    required TResult Function(Object e, String description) error,
    required TResult Function() approved,
    required TResult Function() rejected,
  }) {
    return error(e, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function(Object e, String description)? error,
    TResult? Function()? approved,
    TResult? Function()? rejected,
  }) {
    return error?.call(e, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function(Object e, String description)? error,
    TResult Function()? approved,
    TResult Function()? rejected,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(e, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProcessingState value) processing,
    required TResult Function(ErrorState value) error,
    required TResult Function(ApprovedState value) approved,
    required TResult Function(RejectedState value) rejected,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProcessingState value)? processing,
    TResult? Function(ErrorState value)? error,
    TResult? Function(ApprovedState value)? approved,
    TResult? Function(RejectedState value)? rejected,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProcessingState value)? processing,
    TResult Function(ErrorState value)? error,
    TResult Function(ApprovedState value)? approved,
    TResult Function(RejectedState value)? rejected,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState extends ReviewDataState {
  const factory ErrorState(final Object e, final String description) =
      _$ErrorStateImpl;
  const ErrorState._() : super._();

  Object get e;
  String get description;

  /// Create a copy of ReviewDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApprovedStateImplCopyWith<$Res> {
  factory _$$ApprovedStateImplCopyWith(
          _$ApprovedStateImpl value, $Res Function(_$ApprovedStateImpl) then) =
      __$$ApprovedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApprovedStateImplCopyWithImpl<$Res>
    extends _$ReviewDataStateCopyWithImpl<$Res, _$ApprovedStateImpl>
    implements _$$ApprovedStateImplCopyWith<$Res> {
  __$$ApprovedStateImplCopyWithImpl(
      _$ApprovedStateImpl _value, $Res Function(_$ApprovedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReviewDataState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ApprovedStateImpl extends ApprovedState {
  const _$ApprovedStateImpl() : super._();

  @override
  String toString() {
    return 'ReviewDataState.approved()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ApprovedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() processing,
    required TResult Function(Object e, String description) error,
    required TResult Function() approved,
    required TResult Function() rejected,
  }) {
    return approved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function(Object e, String description)? error,
    TResult? Function()? approved,
    TResult? Function()? rejected,
  }) {
    return approved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function(Object e, String description)? error,
    TResult Function()? approved,
    TResult Function()? rejected,
    required TResult orElse(),
  }) {
    if (approved != null) {
      return approved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProcessingState value) processing,
    required TResult Function(ErrorState value) error,
    required TResult Function(ApprovedState value) approved,
    required TResult Function(RejectedState value) rejected,
  }) {
    return approved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProcessingState value)? processing,
    TResult? Function(ErrorState value)? error,
    TResult? Function(ApprovedState value)? approved,
    TResult? Function(RejectedState value)? rejected,
  }) {
    return approved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProcessingState value)? processing,
    TResult Function(ErrorState value)? error,
    TResult Function(ApprovedState value)? approved,
    TResult Function(RejectedState value)? rejected,
    required TResult orElse(),
  }) {
    if (approved != null) {
      return approved(this);
    }
    return orElse();
  }
}

abstract class ApprovedState extends ReviewDataState {
  const factory ApprovedState() = _$ApprovedStateImpl;
  const ApprovedState._() : super._();
}

/// @nodoc
abstract class _$$RejectedStateImplCopyWith<$Res> {
  factory _$$RejectedStateImplCopyWith(
          _$RejectedStateImpl value, $Res Function(_$RejectedStateImpl) then) =
      __$$RejectedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RejectedStateImplCopyWithImpl<$Res>
    extends _$ReviewDataStateCopyWithImpl<$Res, _$RejectedStateImpl>
    implements _$$RejectedStateImplCopyWith<$Res> {
  __$$RejectedStateImplCopyWithImpl(
      _$RejectedStateImpl _value, $Res Function(_$RejectedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReviewDataState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RejectedStateImpl extends RejectedState {
  const _$RejectedStateImpl() : super._();

  @override
  String toString() {
    return 'ReviewDataState.rejected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RejectedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() processing,
    required TResult Function(Object e, String description) error,
    required TResult Function() approved,
    required TResult Function() rejected,
  }) {
    return rejected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function(Object e, String description)? error,
    TResult? Function()? approved,
    TResult? Function()? rejected,
  }) {
    return rejected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function(Object e, String description)? error,
    TResult Function()? approved,
    TResult Function()? rejected,
    required TResult orElse(),
  }) {
    if (rejected != null) {
      return rejected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProcessingState value) processing,
    required TResult Function(ErrorState value) error,
    required TResult Function(ApprovedState value) approved,
    required TResult Function(RejectedState value) rejected,
  }) {
    return rejected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProcessingState value)? processing,
    TResult? Function(ErrorState value)? error,
    TResult? Function(ApprovedState value)? approved,
    TResult? Function(RejectedState value)? rejected,
  }) {
    return rejected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProcessingState value)? processing,
    TResult Function(ErrorState value)? error,
    TResult Function(ApprovedState value)? approved,
    TResult Function(RejectedState value)? rejected,
    required TResult orElse(),
  }) {
    if (rejected != null) {
      return rejected(this);
    }
    return orElse();
  }
}

abstract class RejectedState extends ReviewDataState {
  const factory RejectedState() = _$RejectedStateImpl;
  const RejectedState._() : super._();
}
