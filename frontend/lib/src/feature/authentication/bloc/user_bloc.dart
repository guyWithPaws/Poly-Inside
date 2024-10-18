// ignore_for_file: camel_case_types

import 'package:bloc/bloc.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poly_inside/src/common/repository/client.dart';
import 'package:shared/shared.dart';
// import 'package:flutter_telegram_web_app/flutter_telegram_web_app.dart' as tg;

part 'user_bloc.freezed.dart';

int? getId() => 12345678;

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({required final UserState state, required this.repository})
      : super(state) {
    on<GetUserEvent>((e, emit) async {
      emit(const UserState.processing('Start logging in'));

      try {
        final id = getId();
        if (id == null) {
          throw Exception('User ID is null');
        }
        emit(const UserState.processing('Getting user from database'));

        var user = await repository.getUserByUserId(id);
        if (!user.hasId()) {
          emit(const UserState.processing('Adding user to database'));

          await repository.addUser(
            User()
              ..id = id
              ..name = 'goxa',
          );
          emit(const UserState.processing(
              'Getting user from database after logging'));
          user = await repository.getUserByUserId(id);
        }
        await FirebaseAnalytics.instance
            .logLogin(parameters: <String, Object>{'UserID': user.id});
        emit(const UserState.processing('Loaded user'));

        emit(UserState.loaded(user));
      } on Object catch (error, _) {
        debugPrint(error.toString());
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
  const factory UserState.processing(String stage) = ProcessingState;
  const factory UserState.idle() = IdleState;
  const factory UserState.error(Object e) = ErrorState;
  const factory UserState.loaded(User user) = LoadedState;
}
