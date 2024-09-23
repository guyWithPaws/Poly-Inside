// ignore_for_file: camel_case_types

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poly_inside/src/common/repository/client.dart';
import 'package:shared/shared.dart';
// import 'package:flutter_telegram_web_app/flutter_telegram_web_app.dart' as tg;

part 'user_bloc.freezed.dart';

int getId() => 1234567891;

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({required final UserState state, required this.repository})
      : super(state) {
    on<GetUserEvent>((e, emit) async {
      emit(const UserState.processing());

      try {
        final id = getId();
        var user = await repository.getUserByUserId(id);
        if (!user.hasId()) {
          await repository.addUser(
            User()
              ..id = id
              ..name = 'goxa',
          );
          user = await repository.getUserByUserId(id);
        }

        emit(UserState.loaded(user));
      } on Object catch (error, _) {
        emit(UserState.error(error));
        rethrow;
      }
    });
  }
  final ClientRepository repository;
}

abstract class UserEvent {}

class GetUserEvent extends UserEvent {
  GetUserEvent();
}

@Freezed()
sealed class UserState with _$UserState {
  const UserState._();
  const factory UserState.processing() = ProcessingState;
  const factory UserState.idle() = IdleState;
  const factory UserState.error(Object e) = ErrorState;
  const factory UserState.loaded(User user) = LoadedState;
}
