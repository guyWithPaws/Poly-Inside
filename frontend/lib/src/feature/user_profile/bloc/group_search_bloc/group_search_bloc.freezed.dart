// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GroupSearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() processing,
    required TResult Function() idle,
    required TResult Function(Object e) error,
    required TResult Function(List<GroupNumber> groups) loaded,
    required TResult Function() approved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function()? idle,
    TResult? Function(Object e)? error,
    TResult? Function(List<GroupNumber> groups)? loaded,
    TResult? Function()? approved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function()? idle,
    TResult Function(Object e)? error,
    TResult Function(List<GroupNumber> groups)? loaded,
    TResult Function()? approved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProcessingState value) processing,
    required TResult Function(IdleState value) idle,
    required TResult Function(ErrorState value) error,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(ApprovedState value) approved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProcessingState value)? processing,
    TResult? Function(IdleState value)? idle,
    TResult? Function(ErrorState value)? error,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(ApprovedState value)? approved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProcessingState value)? processing,
    TResult Function(IdleState value)? idle,
    TResult Function(ErrorState value)? error,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ApprovedState value)? approved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupSearchStateCopyWith<$Res> {
  factory $GroupSearchStateCopyWith(
          GroupSearchState value, $Res Function(GroupSearchState) then) =
      _$GroupSearchStateCopyWithImpl<$Res, GroupSearchState>;
}

/// @nodoc
class _$GroupSearchStateCopyWithImpl<$Res, $Val extends GroupSearchState>
    implements $GroupSearchStateCopyWith<$Res> {
  _$GroupSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupSearchState
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
    extends _$GroupSearchStateCopyWithImpl<$Res, _$ProcessingStateImpl>
    implements _$$ProcessingStateImplCopyWith<$Res> {
  __$$ProcessingStateImplCopyWithImpl(
      _$ProcessingStateImpl _value, $Res Function(_$ProcessingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupSearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProcessingStateImpl extends ProcessingState {
  const _$ProcessingStateImpl() : super._();

  @override
  String toString() {
    return 'GroupSearchState.processing()';
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
    required TResult Function() idle,
    required TResult Function(Object e) error,
    required TResult Function(List<GroupNumber> groups) loaded,
    required TResult Function() approved,
  }) {
    return processing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function()? idle,
    TResult? Function(Object e)? error,
    TResult? Function(List<GroupNumber> groups)? loaded,
    TResult? Function()? approved,
  }) {
    return processing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function()? idle,
    TResult Function(Object e)? error,
    TResult Function(List<GroupNumber> groups)? loaded,
    TResult Function()? approved,
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
    required TResult Function(IdleState value) idle,
    required TResult Function(ErrorState value) error,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(ApprovedState value) approved,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProcessingState value)? processing,
    TResult? Function(IdleState value)? idle,
    TResult? Function(ErrorState value)? error,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(ApprovedState value)? approved,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProcessingState value)? processing,
    TResult Function(IdleState value)? idle,
    TResult Function(ErrorState value)? error,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ApprovedState value)? approved,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class ProcessingState extends GroupSearchState {
  const factory ProcessingState() = _$ProcessingStateImpl;
  const ProcessingState._() : super._();
}

/// @nodoc
abstract class _$$IdleStateImplCopyWith<$Res> {
  factory _$$IdleStateImplCopyWith(
          _$IdleStateImpl value, $Res Function(_$IdleStateImpl) then) =
      __$$IdleStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleStateImplCopyWithImpl<$Res>
    extends _$GroupSearchStateCopyWithImpl<$Res, _$IdleStateImpl>
    implements _$$IdleStateImplCopyWith<$Res> {
  __$$IdleStateImplCopyWithImpl(
      _$IdleStateImpl _value, $Res Function(_$IdleStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupSearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IdleStateImpl extends IdleState {
  const _$IdleStateImpl() : super._();

  @override
  String toString() {
    return 'GroupSearchState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IdleStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() processing,
    required TResult Function() idle,
    required TResult Function(Object e) error,
    required TResult Function(List<GroupNumber> groups) loaded,
    required TResult Function() approved,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function()? idle,
    TResult? Function(Object e)? error,
    TResult? Function(List<GroupNumber> groups)? loaded,
    TResult? Function()? approved,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function()? idle,
    TResult Function(Object e)? error,
    TResult Function(List<GroupNumber> groups)? loaded,
    TResult Function()? approved,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProcessingState value) processing,
    required TResult Function(IdleState value) idle,
    required TResult Function(ErrorState value) error,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(ApprovedState value) approved,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProcessingState value)? processing,
    TResult? Function(IdleState value)? idle,
    TResult? Function(ErrorState value)? error,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(ApprovedState value)? approved,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProcessingState value)? processing,
    TResult Function(IdleState value)? idle,
    TResult Function(ErrorState value)? error,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ApprovedState value)? approved,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class IdleState extends GroupSearchState {
  const factory IdleState() = _$IdleStateImpl;
  const IdleState._() : super._();
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object e});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$GroupSearchStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupSearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$ErrorStateImpl(
      null == e ? _value.e : e,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl extends ErrorState {
  const _$ErrorStateImpl(this.e) : super._();

  @override
  final Object e;

  @override
  String toString() {
    return 'GroupSearchState.error(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  /// Create a copy of GroupSearchState
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
    required TResult Function() idle,
    required TResult Function(Object e) error,
    required TResult Function(List<GroupNumber> groups) loaded,
    required TResult Function() approved,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function()? idle,
    TResult? Function(Object e)? error,
    TResult? Function(List<GroupNumber> groups)? loaded,
    TResult? Function()? approved,
  }) {
    return error?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function()? idle,
    TResult Function(Object e)? error,
    TResult Function(List<GroupNumber> groups)? loaded,
    TResult Function()? approved,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProcessingState value) processing,
    required TResult Function(IdleState value) idle,
    required TResult Function(ErrorState value) error,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(ApprovedState value) approved,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProcessingState value)? processing,
    TResult? Function(IdleState value)? idle,
    TResult? Function(ErrorState value)? error,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(ApprovedState value)? approved,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProcessingState value)? processing,
    TResult Function(IdleState value)? idle,
    TResult Function(ErrorState value)? error,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ApprovedState value)? approved,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState extends GroupSearchState {
  const factory ErrorState(final Object e) = _$ErrorStateImpl;
  const ErrorState._() : super._();

  Object get e;

  /// Create a copy of GroupSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedStateImplCopyWith<$Res> {
  factory _$$LoadedStateImplCopyWith(
          _$LoadedStateImpl value, $Res Function(_$LoadedStateImpl) then) =
      __$$LoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GroupNumber> groups});
}

/// @nodoc
class __$$LoadedStateImplCopyWithImpl<$Res>
    extends _$GroupSearchStateCopyWithImpl<$Res, _$LoadedStateImpl>
    implements _$$LoadedStateImplCopyWith<$Res> {
  __$$LoadedStateImplCopyWithImpl(
      _$LoadedStateImpl _value, $Res Function(_$LoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupSearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groups = null,
  }) {
    return _then(_$LoadedStateImpl(
      null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupNumber>,
    ));
  }
}

/// @nodoc

class _$LoadedStateImpl extends LoadedState {
  const _$LoadedStateImpl(final List<GroupNumber> groups)
      : _groups = groups,
        super._();

  final List<GroupNumber> _groups;
  @override
  List<GroupNumber> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  String toString() {
    return 'GroupSearchState.loaded(groups: $groups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedStateImpl &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_groups));

  /// Create a copy of GroupSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      __$$LoadedStateImplCopyWithImpl<_$LoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() processing,
    required TResult Function() idle,
    required TResult Function(Object e) error,
    required TResult Function(List<GroupNumber> groups) loaded,
    required TResult Function() approved,
  }) {
    return loaded(groups);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function()? idle,
    TResult? Function(Object e)? error,
    TResult? Function(List<GroupNumber> groups)? loaded,
    TResult? Function()? approved,
  }) {
    return loaded?.call(groups);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function()? idle,
    TResult Function(Object e)? error,
    TResult Function(List<GroupNumber> groups)? loaded,
    TResult Function()? approved,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(groups);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProcessingState value) processing,
    required TResult Function(IdleState value) idle,
    required TResult Function(ErrorState value) error,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(ApprovedState value) approved,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProcessingState value)? processing,
    TResult? Function(IdleState value)? idle,
    TResult? Function(ErrorState value)? error,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(ApprovedState value)? approved,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProcessingState value)? processing,
    TResult Function(IdleState value)? idle,
    TResult Function(ErrorState value)? error,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ApprovedState value)? approved,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedState extends GroupSearchState {
  const factory LoadedState(final List<GroupNumber> groups) = _$LoadedStateImpl;
  const LoadedState._() : super._();

  List<GroupNumber> get groups;

  /// Create a copy of GroupSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
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
    extends _$GroupSearchStateCopyWithImpl<$Res, _$ApprovedStateImpl>
    implements _$$ApprovedStateImplCopyWith<$Res> {
  __$$ApprovedStateImplCopyWithImpl(
      _$ApprovedStateImpl _value, $Res Function(_$ApprovedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupSearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ApprovedStateImpl extends ApprovedState {
  const _$ApprovedStateImpl() : super._();

  @override
  String toString() {
    return 'GroupSearchState.approved()';
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
    required TResult Function() idle,
    required TResult Function(Object e) error,
    required TResult Function(List<GroupNumber> groups) loaded,
    required TResult Function() approved,
  }) {
    return approved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function()? idle,
    TResult? Function(Object e)? error,
    TResult? Function(List<GroupNumber> groups)? loaded,
    TResult? Function()? approved,
  }) {
    return approved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function()? idle,
    TResult Function(Object e)? error,
    TResult Function(List<GroupNumber> groups)? loaded,
    TResult Function()? approved,
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
    required TResult Function(IdleState value) idle,
    required TResult Function(ErrorState value) error,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(ApprovedState value) approved,
  }) {
    return approved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProcessingState value)? processing,
    TResult? Function(IdleState value)? idle,
    TResult? Function(ErrorState value)? error,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(ApprovedState value)? approved,
  }) {
    return approved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProcessingState value)? processing,
    TResult Function(IdleState value)? idle,
    TResult Function(ErrorState value)? error,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ApprovedState value)? approved,
    required TResult orElse(),
  }) {
    if (approved != null) {
      return approved(this);
    }
    return orElse();
  }
}

abstract class ApprovedState extends GroupSearchState {
  const factory ApprovedState() = _$ApprovedStateImpl;
  const ApprovedState._() : super._();
}
