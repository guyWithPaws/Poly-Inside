// ignore_for_file: camel_case_types

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:poly_inside/src/common/repository/client.dart';
import 'package:shared/shared.dart';
import 'package:flutter_telegram_web_app/flutter_telegram_web_app.dart' as tg;

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({required final UserState state, required this.repository})
      : super(state) {
    on<GetUserEvent>((e, emit) async {
      final id = tg.initDataUnsafe.user?.id;
      if (e.id == null) {
        emit(const UserState.processing(data: null));
        if (id == null) {
          emit(const UserState.error(
              data: null, message: "Cannot fetch UserID"));
        } else {
          await repository.addUser(User()..id = id);
        }
      }
      final user = await repository.getUserByUserId(id ?? 0);
      if (!user.hasId()) {
        emit(
          const UserState.error(data: null, message: 'User not found'),
        );
      }
      emit(UserState.successful(data: user));
    });
  }
  final ClientRepository repository;
}

abstract class UserEvent {}

class GetUserEvent extends UserEvent {
  final int? id;
  GetUserEvent({required this.id});
}

/// {@template init_bloc}
/// init_blocState.
/// {@endtemplate}
sealed class UserState extends _$init_blocStateBase {
  /// Idling state
  /// {@macro init_bloc}
  const factory UserState.idle({
    required User? data,
    String message,
  }) = init_blocState$Idle;

  /// Processing
  /// {@macro init_bloc}
  const factory UserState.processing({
    required User? data,
    String message,
  }) = init_blocState$Processing;

  /// Successful
  /// {@macro init_bloc}
  const factory UserState.successful({
    required User? data,
    String message,
  }) = init_blocState$Successful;

  /// An error has occurred
  /// {@macro init_bloc}
  const factory UserState.error({
    required User? data,
    String message,
  }) = init_blocState$Error;

  /// {@macro init_bloc}
  const UserState({required super.data, required super.message});
}

/// Idling state
final class init_blocState$Idle extends UserState {
  const init_blocState$Idle({required super.data, super.message = 'Idling'});
}

/// Processing
final class init_blocState$Processing extends UserState {
  const init_blocState$Processing(
      {required super.data, super.message = 'Processing'});
}

/// Successful
final class init_blocState$Successful extends UserState {
  const init_blocState$Successful(
      {required super.data, super.message = 'Successful'});
}

/// Error
final class init_blocState$Error extends UserState {
  const init_blocState$Error(
      {required super.data, super.message = 'An error has occurred.'});
}

/// Pattern matching for [UserState].
typedef init_blocStateMatch<R, S extends UserState> = R Function(S state);

@immutable
abstract base class _$init_blocStateBase {
  const _$init_blocStateBase({required this.data, required this.message});

  /// Data entity payload.
  @nonVirtual
  final User? data;

  /// Message or state description.
  @nonVirtual
  final String message;

  /// Has data?
  bool get hasData => data != null;

  /// If an error has occurred?
  bool get hasError => maybeMap<bool>(orElse: () => false, error: (_) => true);

  /// Is in progress state?
  bool get isProcessing =>
      maybeMap<bool>(orElse: () => false, processing: (_) => true);

  /// Is in idle state?
  bool get isIdling => !isProcessing;

  /// Pattern matching for [UserState].
  R map<R>({
    required init_blocStateMatch<R, init_blocState$Idle> idle,
    required init_blocStateMatch<R, init_blocState$Processing> processing,
    required init_blocStateMatch<R, init_blocState$Successful> successful,
    required init_blocStateMatch<R, init_blocState$Error> error,
  }) =>
      switch (this) {
        init_blocState$Idle s => idle(s),
        init_blocState$Processing s => processing(s),
        init_blocState$Successful s => successful(s),
        init_blocState$Error s => error(s),
        _ => throw AssertionError(),
      };

  /// Pattern matching for [UserState].
  R maybeMap<R>({
    init_blocStateMatch<R, init_blocState$Idle>? idle,
    init_blocStateMatch<R, init_blocState$Processing>? processing,
    init_blocStateMatch<R, init_blocState$Successful>? successful,
    init_blocStateMatch<R, init_blocState$Error>? error,
    required R Function() orElse,
  }) =>
      map<R>(
        idle: idle ?? (_) => orElse(),
        processing: processing ?? (_) => orElse(),
        successful: successful ?? (_) => orElse(),
        error: error ?? (_) => orElse(),
      );

  /// Pattern matching for [UserState].
  R? mapOrNull<R>({
    init_blocStateMatch<R, init_blocState$Idle>? idle,
    init_blocStateMatch<R, init_blocState$Processing>? processing,
    init_blocStateMatch<R, init_blocState$Successful>? successful,
    init_blocStateMatch<R, init_blocState$Error>? error,
  }) =>
      map<R?>(
        idle: idle ?? (_) => null,
        processing: processing ?? (_) => null,
        successful: successful ?? (_) => null,
        error: error ?? (_) => null,
      );

  @override
  int get hashCode => data.hashCode;

  @override
  bool operator ==(Object other) => identical(this, other);

  @override
  String toString() => 'init_blocState{message: $message}';
}
