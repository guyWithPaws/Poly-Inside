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
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String stage) processing,
    required TResult Function() idle,
    required TResult Function(Object e) error,
    required TResult Function(User user) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String stage)? processing,
    TResult? Function()? idle,
    TResult? Function(Object e)? error,
    TResult? Function(User user)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String stage)? processing,
    TResult Function()? idle,
    TResult Function(Object e)? error,
    TResult Function(User user)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProcessingState value) processing,
    required TResult Function(IdleState value) idle,
    required TResult Function(ErrorState value) error,
    required TResult Function(LoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProcessingState value)? processing,
    TResult? Function(IdleState value)? idle,
    TResult? Function(ErrorState value)? error,
    TResult? Function(LoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProcessingState value)? processing,
    TResult Function(IdleState value)? idle,
    TResult Function(ErrorState value)? error,
    TResult Function(LoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) = _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProcessingStateImplCopyWith<$Res> {
  factory _$$ProcessingStateImplCopyWith(_$ProcessingStateImpl value, $Res Function(_$ProcessingStateImpl) then) =
      __$$ProcessingStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String stage});
}

/// @nodoc
class __$$ProcessingStateImplCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res, _$ProcessingStateImpl>
    implements _$$ProcessingStateImplCopyWith<$Res> {
  __$$ProcessingStateImplCopyWithImpl(_$ProcessingStateImpl _value, $Res Function(_$ProcessingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stage = null,
  }) {
    return _then(_$ProcessingStateImpl(
      null == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProcessingStateImpl extends ProcessingState with DiagnosticableTreeMixin {
  const _$ProcessingStateImpl(this.stage) : super._();

  @override
  final String stage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState.processing(stage: $stage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserState.processing'))
      ..add(DiagnosticsProperty('stage', stage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcessingStateImpl &&
            (identical(other.stage, stage) || other.stage == stage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stage);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcessingStateImplCopyWith<_$ProcessingStateImpl> get copyWith =>
      __$$ProcessingStateImplCopyWithImpl<_$ProcessingStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String stage) processing,
    required TResult Function() idle,
    required TResult Function(Object e) error,
    required TResult Function(User user) loaded,
  }) {
    return processing(stage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String stage)? processing,
    TResult? Function()? idle,
    TResult? Function(Object e)? error,
    TResult? Function(User user)? loaded,
  }) {
    return processing?.call(stage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String stage)? processing,
    TResult Function()? idle,
    TResult Function(Object e)? error,
    TResult Function(User user)? loaded,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(stage);
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
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class ProcessingState extends UserState {
  const factory ProcessingState(final String stage) = _$ProcessingStateImpl;
  const ProcessingState._() : super._();

  String get stage;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProcessingStateImplCopyWith<_$ProcessingStateImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IdleStateImplCopyWith<$Res> {
  factory _$$IdleStateImplCopyWith(_$IdleStateImpl value, $Res Function(_$IdleStateImpl) then) =
      __$$IdleStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleStateImplCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res, _$IdleStateImpl>
    implements _$$IdleStateImplCopyWith<$Res> {
  __$$IdleStateImplCopyWithImpl(_$IdleStateImpl _value, $Res Function(_$IdleStateImpl) _then) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IdleStateImpl extends IdleState with DiagnosticableTreeMixin {
  const _$IdleStateImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState.idle()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'UserState.idle'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$IdleStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String stage) processing,
    required TResult Function() idle,
    required TResult Function(Object e) error,
    required TResult Function(User user) loaded,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String stage)? processing,
    TResult? Function()? idle,
    TResult? Function(Object e)? error,
    TResult? Function(User user)? loaded,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String stage)? processing,
    TResult Function()? idle,
    TResult Function(Object e)? error,
    TResult Function(User user)? loaded,
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
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class IdleState extends UserState {
  const factory IdleState() = _$IdleStateImpl;
  const IdleState._() : super._();
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(_$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object e});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(_$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then) : super(_value, _then);

  /// Create a copy of UserState
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

class _$ErrorStateImpl extends ErrorState with DiagnosticableTreeMixin {
  const _$ErrorStateImpl(this.e) : super._();

  @override
  final Object e;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState.error(e: $e)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserState.error'))
      ..add(DiagnosticsProperty('e', e));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String stage) processing,
    required TResult Function() idle,
    required TResult Function(Object e) error,
    required TResult Function(User user) loaded,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String stage)? processing,
    TResult? Function()? idle,
    TResult? Function(Object e)? error,
    TResult? Function(User user)? loaded,
  }) {
    return error?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String stage)? processing,
    TResult Function()? idle,
    TResult Function(Object e)? error,
    TResult Function(User user)? loaded,
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
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState extends UserState {
  const factory ErrorState(final Object e) = _$ErrorStateImpl;
  const ErrorState._() : super._();

  Object get e;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedStateImplCopyWith<$Res> {
  factory _$$LoadedStateImplCopyWith(_$LoadedStateImpl value, $Res Function(_$LoadedStateImpl) then) =
      __$$LoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$LoadedStateImplCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res, _$LoadedStateImpl>
    implements _$$LoadedStateImplCopyWith<$Res> {
  __$$LoadedStateImplCopyWithImpl(_$LoadedStateImpl _value, $Res Function(_$LoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$LoadedStateImpl(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$LoadedStateImpl extends LoadedState with DiagnosticableTreeMixin {
  const _$LoadedStateImpl(this.user) : super._();

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState.loaded(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserState.loaded'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedStateImpl &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      __$$LoadedStateImplCopyWithImpl<_$LoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String stage) processing,
    required TResult Function() idle,
    required TResult Function(Object e) error,
    required TResult Function(User user) loaded,
  }) {
    return loaded(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String stage)? processing,
    TResult? Function()? idle,
    TResult? Function(Object e)? error,
    TResult? Function(User user)? loaded,
  }) {
    return loaded?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String stage)? processing,
    TResult Function()? idle,
    TResult Function(Object e)? error,
    TResult Function(User user)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(user);
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
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedState extends UserState {
  const factory LoadedState(final User user) = _$LoadedStateImpl;
  const LoadedState._() : super._();

  User get user;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith => throw _privateConstructorUsedError;
}
