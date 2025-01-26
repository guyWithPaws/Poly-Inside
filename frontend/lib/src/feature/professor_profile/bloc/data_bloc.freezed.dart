// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfessorDataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() processing,
    required TResult Function() idle,
    required TResult Function(Object e) error,
    required TResult Function(List<ReviewWithUser> professors) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function()? idle,
    TResult? Function(Object e)? error,
    TResult? Function(List<ReviewWithUser> professors)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function()? idle,
    TResult Function(Object e)? error,
    TResult Function(List<ReviewWithUser> professors)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProcessingProfessorState value) processing,
    required TResult Function(IdleProfessorState value) idle,
    required TResult Function(ErrorProfessorState value) error,
    required TResult Function(LoadedProfessorState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProcessingProfessorState value)? processing,
    TResult? Function(IdleProfessorState value)? idle,
    TResult? Function(ErrorProfessorState value)? error,
    TResult? Function(LoadedProfessorState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProcessingProfessorState value)? processing,
    TResult Function(IdleProfessorState value)? idle,
    TResult Function(ErrorProfessorState value)? error,
    TResult Function(LoadedProfessorState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfessorDataStateCopyWith<$Res> {
  factory $ProfessorDataStateCopyWith(ProfessorDataState value, $Res Function(ProfessorDataState) then) =
      _$ProfessorDataStateCopyWithImpl<$Res, ProfessorDataState>;
}

/// @nodoc
class _$ProfessorDataStateCopyWithImpl<$Res, $Val extends ProfessorDataState>
    implements $ProfessorDataStateCopyWith<$Res> {
  _$ProfessorDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfessorDataState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProcessingProfessorStateImplCopyWith<$Res> {
  factory _$$ProcessingProfessorStateImplCopyWith(
          _$ProcessingProfessorStateImpl value, $Res Function(_$ProcessingProfessorStateImpl) then) =
      __$$ProcessingProfessorStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProcessingProfessorStateImplCopyWithImpl<$Res>
    extends _$ProfessorDataStateCopyWithImpl<$Res, _$ProcessingProfessorStateImpl>
    implements _$$ProcessingProfessorStateImplCopyWith<$Res> {
  __$$ProcessingProfessorStateImplCopyWithImpl(
      _$ProcessingProfessorStateImpl _value, $Res Function(_$ProcessingProfessorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfessorDataState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProcessingProfessorStateImpl extends ProcessingProfessorState {
  const _$ProcessingProfessorStateImpl() : super._();

  @override
  String toString() {
    return 'ProfessorDataState.processing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$ProcessingProfessorStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() processing,
    required TResult Function() idle,
    required TResult Function(Object e) error,
    required TResult Function(List<ReviewWithUser> professors) loaded,
  }) {
    return processing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function()? idle,
    TResult? Function(Object e)? error,
    TResult? Function(List<ReviewWithUser> professors)? loaded,
  }) {
    return processing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function()? idle,
    TResult Function(Object e)? error,
    TResult Function(List<ReviewWithUser> professors)? loaded,
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
    required TResult Function(ProcessingProfessorState value) processing,
    required TResult Function(IdleProfessorState value) idle,
    required TResult Function(ErrorProfessorState value) error,
    required TResult Function(LoadedProfessorState value) loaded,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProcessingProfessorState value)? processing,
    TResult? Function(IdleProfessorState value)? idle,
    TResult? Function(ErrorProfessorState value)? error,
    TResult? Function(LoadedProfessorState value)? loaded,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProcessingProfessorState value)? processing,
    TResult Function(IdleProfessorState value)? idle,
    TResult Function(ErrorProfessorState value)? error,
    TResult Function(LoadedProfessorState value)? loaded,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class ProcessingProfessorState extends ProfessorDataState {
  const factory ProcessingProfessorState() = _$ProcessingProfessorStateImpl;
  const ProcessingProfessorState._() : super._();
}

/// @nodoc
abstract class _$$IdleProfessorStateImplCopyWith<$Res> {
  factory _$$IdleProfessorStateImplCopyWith(
          _$IdleProfessorStateImpl value, $Res Function(_$IdleProfessorStateImpl) then) =
      __$$IdleProfessorStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleProfessorStateImplCopyWithImpl<$Res>
    extends _$ProfessorDataStateCopyWithImpl<$Res, _$IdleProfessorStateImpl>
    implements _$$IdleProfessorStateImplCopyWith<$Res> {
  __$$IdleProfessorStateImplCopyWithImpl(_$IdleProfessorStateImpl _value, $Res Function(_$IdleProfessorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfessorDataState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IdleProfessorStateImpl extends IdleProfessorState {
  const _$IdleProfessorStateImpl() : super._();

  @override
  String toString() {
    return 'ProfessorDataState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$IdleProfessorStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() processing,
    required TResult Function() idle,
    required TResult Function(Object e) error,
    required TResult Function(List<ReviewWithUser> professors) loaded,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function()? idle,
    TResult? Function(Object e)? error,
    TResult? Function(List<ReviewWithUser> professors)? loaded,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function()? idle,
    TResult Function(Object e)? error,
    TResult Function(List<ReviewWithUser> professors)? loaded,
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
    required TResult Function(ProcessingProfessorState value) processing,
    required TResult Function(IdleProfessorState value) idle,
    required TResult Function(ErrorProfessorState value) error,
    required TResult Function(LoadedProfessorState value) loaded,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProcessingProfessorState value)? processing,
    TResult? Function(IdleProfessorState value)? idle,
    TResult? Function(ErrorProfessorState value)? error,
    TResult? Function(LoadedProfessorState value)? loaded,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProcessingProfessorState value)? processing,
    TResult Function(IdleProfessorState value)? idle,
    TResult Function(ErrorProfessorState value)? error,
    TResult Function(LoadedProfessorState value)? loaded,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class IdleProfessorState extends ProfessorDataState {
  const factory IdleProfessorState() = _$IdleProfessorStateImpl;
  const IdleProfessorState._() : super._();
}

/// @nodoc
abstract class _$$ErrorProfessorStateImplCopyWith<$Res> {
  factory _$$ErrorProfessorStateImplCopyWith(
          _$ErrorProfessorStateImpl value, $Res Function(_$ErrorProfessorStateImpl) then) =
      __$$ErrorProfessorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object e});
}

/// @nodoc
class __$$ErrorProfessorStateImplCopyWithImpl<$Res>
    extends _$ProfessorDataStateCopyWithImpl<$Res, _$ErrorProfessorStateImpl>
    implements _$$ErrorProfessorStateImplCopyWith<$Res> {
  __$$ErrorProfessorStateImplCopyWithImpl(
      _$ErrorProfessorStateImpl _value, $Res Function(_$ErrorProfessorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfessorDataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$ErrorProfessorStateImpl(
      null == e ? _value.e : e,
    ));
  }
}

/// @nodoc

class _$ErrorProfessorStateImpl extends ErrorProfessorState {
  const _$ErrorProfessorStateImpl(this.e) : super._();

  @override
  final Object e;

  @override
  String toString() {
    return 'ProfessorDataState.error(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorProfessorStateImpl &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  /// Create a copy of ProfessorDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorProfessorStateImplCopyWith<_$ErrorProfessorStateImpl> get copyWith =>
      __$$ErrorProfessorStateImplCopyWithImpl<_$ErrorProfessorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() processing,
    required TResult Function() idle,
    required TResult Function(Object e) error,
    required TResult Function(List<ReviewWithUser> professors) loaded,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function()? idle,
    TResult? Function(Object e)? error,
    TResult? Function(List<ReviewWithUser> professors)? loaded,
  }) {
    return error?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function()? idle,
    TResult Function(Object e)? error,
    TResult Function(List<ReviewWithUser> professors)? loaded,
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
    required TResult Function(ProcessingProfessorState value) processing,
    required TResult Function(IdleProfessorState value) idle,
    required TResult Function(ErrorProfessorState value) error,
    required TResult Function(LoadedProfessorState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProcessingProfessorState value)? processing,
    TResult? Function(IdleProfessorState value)? idle,
    TResult? Function(ErrorProfessorState value)? error,
    TResult? Function(LoadedProfessorState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProcessingProfessorState value)? processing,
    TResult Function(IdleProfessorState value)? idle,
    TResult Function(ErrorProfessorState value)? error,
    TResult Function(LoadedProfessorState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorProfessorState extends ProfessorDataState {
  const factory ErrorProfessorState(final Object e) = _$ErrorProfessorStateImpl;
  const ErrorProfessorState._() : super._();

  Object get e;

  /// Create a copy of ProfessorDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorProfessorStateImplCopyWith<_$ErrorProfessorStateImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedProfessorStateImplCopyWith<$Res> {
  factory _$$LoadedProfessorStateImplCopyWith(
          _$LoadedProfessorStateImpl value, $Res Function(_$LoadedProfessorStateImpl) then) =
      __$$LoadedProfessorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ReviewWithUser> professors});
}

/// @nodoc
class __$$LoadedProfessorStateImplCopyWithImpl<$Res>
    extends _$ProfessorDataStateCopyWithImpl<$Res, _$LoadedProfessorStateImpl>
    implements _$$LoadedProfessorStateImplCopyWith<$Res> {
  __$$LoadedProfessorStateImplCopyWithImpl(
      _$LoadedProfessorStateImpl _value, $Res Function(_$LoadedProfessorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfessorDataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? professors = null,
  }) {
    return _then(_$LoadedProfessorStateImpl(
      null == professors
          ? _value._professors
          : professors // ignore: cast_nullable_to_non_nullable
              as List<ReviewWithUser>,
    ));
  }
}

/// @nodoc

class _$LoadedProfessorStateImpl extends LoadedProfessorState {
  const _$LoadedProfessorStateImpl(final List<ReviewWithUser> professors)
      : _professors = professors,
        super._();

  final List<ReviewWithUser> _professors;
  @override
  List<ReviewWithUser> get professors {
    if (_professors is EqualUnmodifiableListView) return _professors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_professors);
  }

  @override
  String toString() {
    return 'ProfessorDataState.loaded(professors: $professors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedProfessorStateImpl &&
            const DeepCollectionEquality().equals(other._professors, _professors));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_professors));

  /// Create a copy of ProfessorDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedProfessorStateImplCopyWith<_$LoadedProfessorStateImpl> get copyWith =>
      __$$LoadedProfessorStateImplCopyWithImpl<_$LoadedProfessorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() processing,
    required TResult Function() idle,
    required TResult Function(Object e) error,
    required TResult Function(List<ReviewWithUser> professors) loaded,
  }) {
    return loaded(professors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function()? idle,
    TResult? Function(Object e)? error,
    TResult? Function(List<ReviewWithUser> professors)? loaded,
  }) {
    return loaded?.call(professors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function()? idle,
    TResult Function(Object e)? error,
    TResult Function(List<ReviewWithUser> professors)? loaded,
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
    required TResult Function(ProcessingProfessorState value) processing,
    required TResult Function(IdleProfessorState value) idle,
    required TResult Function(ErrorProfessorState value) error,
    required TResult Function(LoadedProfessorState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProcessingProfessorState value)? processing,
    TResult? Function(IdleProfessorState value)? idle,
    TResult? Function(ErrorProfessorState value)? error,
    TResult? Function(LoadedProfessorState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProcessingProfessorState value)? processing,
    TResult Function(IdleProfessorState value)? idle,
    TResult Function(ErrorProfessorState value)? error,
    TResult Function(LoadedProfessorState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedProfessorState extends ProfessorDataState {
  const factory LoadedProfessorState(final List<ReviewWithUser> professors) = _$LoadedProfessorStateImpl;
  const LoadedProfessorState._() : super._();

  List<ReviewWithUser> get professors;

  /// Create a copy of ProfessorDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedProfessorStateImplCopyWith<_$LoadedProfessorStateImpl> get copyWith => throw _privateConstructorUsedError;
}
