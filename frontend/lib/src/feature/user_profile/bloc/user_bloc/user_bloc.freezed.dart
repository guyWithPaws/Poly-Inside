// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileDataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() processing,
    required TResult Function() idle,
    required TResult Function(Object e) error,
    required TResult Function(List<Group> groups) groupsLoaded,
    required TResult Function(List<ReviewWithProfessor> professors) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function()? idle,
    TResult? Function(Object e)? error,
    TResult? Function(List<Group> groups)? groupsLoaded,
    TResult? Function(List<ReviewWithProfessor> professors)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function()? idle,
    TResult Function(Object e)? error,
    TResult Function(List<Group> groups)? groupsLoaded,
    TResult Function(List<ReviewWithProfessor> professors)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProcessingState value) processing,
    required TResult Function(IdleState value) idle,
    required TResult Function(ErrorState value) error,
    required TResult Function(GroupsLoadedState value) groupsLoaded,
    required TResult Function(LoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProcessingState value)? processing,
    TResult? Function(IdleState value)? idle,
    TResult? Function(ErrorState value)? error,
    TResult? Function(GroupsLoadedState value)? groupsLoaded,
    TResult? Function(LoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProcessingState value)? processing,
    TResult Function(IdleState value)? idle,
    TResult Function(ErrorState value)? error,
    TResult Function(GroupsLoadedState value)? groupsLoaded,
    TResult Function(LoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDataStateCopyWith<$Res> {
  factory $ProfileDataStateCopyWith(
          ProfileDataState value, $Res Function(ProfileDataState) then) =
      _$ProfileDataStateCopyWithImpl<$Res, ProfileDataState>;
}

/// @nodoc
class _$ProfileDataStateCopyWithImpl<$Res, $Val extends ProfileDataState>
    implements $ProfileDataStateCopyWith<$Res> {
  _$ProfileDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileDataState
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
    extends _$ProfileDataStateCopyWithImpl<$Res, _$ProcessingStateImpl>
    implements _$$ProcessingStateImplCopyWith<$Res> {
  __$$ProcessingStateImplCopyWithImpl(
      _$ProcessingStateImpl _value, $Res Function(_$ProcessingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileDataState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProcessingStateImpl extends ProcessingState {
  const _$ProcessingStateImpl() : super._();

  @override
  String toString() {
    return 'ProfileDataState.processing()';
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
    required TResult Function(List<Group> groups) groupsLoaded,
    required TResult Function(List<ReviewWithProfessor> professors) loaded,
  }) {
    return processing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function()? idle,
    TResult? Function(Object e)? error,
    TResult? Function(List<Group> groups)? groupsLoaded,
    TResult? Function(List<ReviewWithProfessor> professors)? loaded,
  }) {
    return processing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function()? idle,
    TResult Function(Object e)? error,
    TResult Function(List<Group> groups)? groupsLoaded,
    TResult Function(List<ReviewWithProfessor> professors)? loaded,
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
    required TResult Function(GroupsLoadedState value) groupsLoaded,
    required TResult Function(LoadedState value) loaded,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProcessingState value)? processing,
    TResult? Function(IdleState value)? idle,
    TResult? Function(ErrorState value)? error,
    TResult? Function(GroupsLoadedState value)? groupsLoaded,
    TResult? Function(LoadedState value)? loaded,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProcessingState value)? processing,
    TResult Function(IdleState value)? idle,
    TResult Function(ErrorState value)? error,
    TResult Function(GroupsLoadedState value)? groupsLoaded,
    TResult Function(LoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class ProcessingState extends ProfileDataState {
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
    extends _$ProfileDataStateCopyWithImpl<$Res, _$IdleStateImpl>
    implements _$$IdleStateImplCopyWith<$Res> {
  __$$IdleStateImplCopyWithImpl(
      _$IdleStateImpl _value, $Res Function(_$IdleStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileDataState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IdleStateImpl extends IdleState {
  const _$IdleStateImpl() : super._();

  @override
  String toString() {
    return 'ProfileDataState.idle()';
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
    required TResult Function(List<Group> groups) groupsLoaded,
    required TResult Function(List<ReviewWithProfessor> professors) loaded,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function()? idle,
    TResult? Function(Object e)? error,
    TResult? Function(List<Group> groups)? groupsLoaded,
    TResult? Function(List<ReviewWithProfessor> professors)? loaded,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function()? idle,
    TResult Function(Object e)? error,
    TResult Function(List<Group> groups)? groupsLoaded,
    TResult Function(List<ReviewWithProfessor> professors)? loaded,
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
    required TResult Function(GroupsLoadedState value) groupsLoaded,
    required TResult Function(LoadedState value) loaded,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProcessingState value)? processing,
    TResult? Function(IdleState value)? idle,
    TResult? Function(ErrorState value)? error,
    TResult? Function(GroupsLoadedState value)? groupsLoaded,
    TResult? Function(LoadedState value)? loaded,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProcessingState value)? processing,
    TResult Function(IdleState value)? idle,
    TResult Function(ErrorState value)? error,
    TResult Function(GroupsLoadedState value)? groupsLoaded,
    TResult Function(LoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class IdleState extends ProfileDataState {
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
    extends _$ProfileDataStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileDataState
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
    return 'ProfileDataState.error(e: $e)';
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

  /// Create a copy of ProfileDataState
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
    required TResult Function(List<Group> groups) groupsLoaded,
    required TResult Function(List<ReviewWithProfessor> professors) loaded,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function()? idle,
    TResult? Function(Object e)? error,
    TResult? Function(List<Group> groups)? groupsLoaded,
    TResult? Function(List<ReviewWithProfessor> professors)? loaded,
  }) {
    return error?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function()? idle,
    TResult Function(Object e)? error,
    TResult Function(List<Group> groups)? groupsLoaded,
    TResult Function(List<ReviewWithProfessor> professors)? loaded,
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
    required TResult Function(GroupsLoadedState value) groupsLoaded,
    required TResult Function(LoadedState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProcessingState value)? processing,
    TResult? Function(IdleState value)? idle,
    TResult? Function(ErrorState value)? error,
    TResult? Function(GroupsLoadedState value)? groupsLoaded,
    TResult? Function(LoadedState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProcessingState value)? processing,
    TResult Function(IdleState value)? idle,
    TResult Function(ErrorState value)? error,
    TResult Function(GroupsLoadedState value)? groupsLoaded,
    TResult Function(LoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState extends ProfileDataState {
  const factory ErrorState(final Object e) = _$ErrorStateImpl;
  const ErrorState._() : super._();

  Object get e;

  /// Create a copy of ProfileDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GroupsLoadedStateImplCopyWith<$Res> {
  factory _$$GroupsLoadedStateImplCopyWith(_$GroupsLoadedStateImpl value,
          $Res Function(_$GroupsLoadedStateImpl) then) =
      __$$GroupsLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Group> groups});
}

/// @nodoc
class __$$GroupsLoadedStateImplCopyWithImpl<$Res>
    extends _$ProfileDataStateCopyWithImpl<$Res, _$GroupsLoadedStateImpl>
    implements _$$GroupsLoadedStateImplCopyWith<$Res> {
  __$$GroupsLoadedStateImplCopyWithImpl(_$GroupsLoadedStateImpl _value,
      $Res Function(_$GroupsLoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileDataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groups = null,
  }) {
    return _then(_$GroupsLoadedStateImpl(
      null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>,
    ));
  }
}

/// @nodoc

class _$GroupsLoadedStateImpl extends GroupsLoadedState {
  const _$GroupsLoadedStateImpl(final List<Group> groups)
      : _groups = groups,
        super._();

  final List<Group> _groups;
  @override
  List<Group> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  String toString() {
    return 'ProfileDataState.groupsLoaded(groups: $groups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupsLoadedStateImpl &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_groups));

  /// Create a copy of ProfileDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupsLoadedStateImplCopyWith<_$GroupsLoadedStateImpl> get copyWith =>
      __$$GroupsLoadedStateImplCopyWithImpl<_$GroupsLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() processing,
    required TResult Function() idle,
    required TResult Function(Object e) error,
    required TResult Function(List<Group> groups) groupsLoaded,
    required TResult Function(List<ReviewWithProfessor> professors) loaded,
  }) {
    return groupsLoaded(groups);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function()? idle,
    TResult? Function(Object e)? error,
    TResult? Function(List<Group> groups)? groupsLoaded,
    TResult? Function(List<ReviewWithProfessor> professors)? loaded,
  }) {
    return groupsLoaded?.call(groups);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function()? idle,
    TResult Function(Object e)? error,
    TResult Function(List<Group> groups)? groupsLoaded,
    TResult Function(List<ReviewWithProfessor> professors)? loaded,
    required TResult orElse(),
  }) {
    if (groupsLoaded != null) {
      return groupsLoaded(groups);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProcessingState value) processing,
    required TResult Function(IdleState value) idle,
    required TResult Function(ErrorState value) error,
    required TResult Function(GroupsLoadedState value) groupsLoaded,
    required TResult Function(LoadedState value) loaded,
  }) {
    return groupsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProcessingState value)? processing,
    TResult? Function(IdleState value)? idle,
    TResult? Function(ErrorState value)? error,
    TResult? Function(GroupsLoadedState value)? groupsLoaded,
    TResult? Function(LoadedState value)? loaded,
  }) {
    return groupsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProcessingState value)? processing,
    TResult Function(IdleState value)? idle,
    TResult Function(ErrorState value)? error,
    TResult Function(GroupsLoadedState value)? groupsLoaded,
    TResult Function(LoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (groupsLoaded != null) {
      return groupsLoaded(this);
    }
    return orElse();
  }
}

abstract class GroupsLoadedState extends ProfileDataState {
  const factory GroupsLoadedState(final List<Group> groups) =
      _$GroupsLoadedStateImpl;
  const GroupsLoadedState._() : super._();

  List<Group> get groups;

  /// Create a copy of ProfileDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupsLoadedStateImplCopyWith<_$GroupsLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedStateImplCopyWith<$Res> {
  factory _$$LoadedStateImplCopyWith(
          _$LoadedStateImpl value, $Res Function(_$LoadedStateImpl) then) =
      __$$LoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ReviewWithProfessor> professors});
}

/// @nodoc
class __$$LoadedStateImplCopyWithImpl<$Res>
    extends _$ProfileDataStateCopyWithImpl<$Res, _$LoadedStateImpl>
    implements _$$LoadedStateImplCopyWith<$Res> {
  __$$LoadedStateImplCopyWithImpl(
      _$LoadedStateImpl _value, $Res Function(_$LoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileDataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? professors = null,
  }) {
    return _then(_$LoadedStateImpl(
      null == professors
          ? _value._professors
          : professors // ignore: cast_nullable_to_non_nullable
              as List<ReviewWithProfessor>,
    ));
  }
}

/// @nodoc

class _$LoadedStateImpl extends LoadedState {
  const _$LoadedStateImpl(final List<ReviewWithProfessor> professors)
      : _professors = professors,
        super._();

  final List<ReviewWithProfessor> _professors;
  @override
  List<ReviewWithProfessor> get professors {
    if (_professors is EqualUnmodifiableListView) return _professors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_professors);
  }

  @override
  String toString() {
    return 'ProfileDataState.loaded(professors: $professors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedStateImpl &&
            const DeepCollectionEquality()
                .equals(other._professors, _professors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_professors));

  /// Create a copy of ProfileDataState
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
    required TResult Function(List<Group> groups) groupsLoaded,
    required TResult Function(List<ReviewWithProfessor> professors) loaded,
  }) {
    return loaded(professors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function()? idle,
    TResult? Function(Object e)? error,
    TResult? Function(List<Group> groups)? groupsLoaded,
    TResult? Function(List<ReviewWithProfessor> professors)? loaded,
  }) {
    return loaded?.call(professors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function()? idle,
    TResult Function(Object e)? error,
    TResult Function(List<Group> groups)? groupsLoaded,
    TResult Function(List<ReviewWithProfessor> professors)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(professors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProcessingState value) processing,
    required TResult Function(IdleState value) idle,
    required TResult Function(ErrorState value) error,
    required TResult Function(GroupsLoadedState value) groupsLoaded,
    required TResult Function(LoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProcessingState value)? processing,
    TResult? Function(IdleState value)? idle,
    TResult? Function(ErrorState value)? error,
    TResult? Function(GroupsLoadedState value)? groupsLoaded,
    TResult? Function(LoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProcessingState value)? processing,
    TResult Function(IdleState value)? idle,
    TResult Function(ErrorState value)? error,
    TResult Function(GroupsLoadedState value)? groupsLoaded,
    TResult Function(LoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedState extends ProfileDataState {
  const factory LoadedState(final List<ReviewWithProfessor> professors) =
      _$LoadedStateImpl;
  const LoadedState._() : super._();

  List<ReviewWithProfessor> get professors;

  /// Create a copy of ProfileDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
