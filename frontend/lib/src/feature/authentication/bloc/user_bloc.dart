// ignore_for_file: camel_case_types

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poly_inside/src/common/repository/client.dart';
import 'package:shared/shared.dart';
import 'package:telegram_web_app/telegram_web_app.dart';
import 'package:poly_inside/src/feature/authentication/model/client_stub.dart'
    if (dart.library.js_interop) 'package:poly_inside/src/feature/authentication/model/client_web.dart'
    if (dart.library.io) 'package:poly_inside/src/feature/authentication/model/client_io.dart';

part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc(
      {required final UserState state,
      required this.repository})
      : super(state) {
    on<GetUserEvent>((event, emit) async {
      emit(const UserState.processing('Start logging in'));

      try {
        final id = getId();
        emit(const UserState.processing(
            'Getting user from database'));

        var user = await repository.getUserByUserId(id);
        if (!user.hasId()) {
          emit(const NotAuthorizedState());
        } else {
          await FirebaseAnalytics.instance.logLogin(
              parameters: <String, Object>{
                'UserID': user.id
              });
          emit(const UserState.processing('Loaded user'));
          emit(UserState.loaded(user));
        }
      } on Object catch (error, _) {
        debugPrint(error.toString());
        emit(UserState.error(error));
        rethrow;
      }
    });
    on<AuthenticationRequested>((event, emit) async {
      try {
        var warningMessage = '';
        if (event.name.isEmpty) {
          warningMessage = 'Заполните поле с именем!';
        } else if (!event.isLicenseAccepted) {
          warningMessage =
              'Примите пользовательское соглашение!';
        }

        if (warningMessage.isNotEmpty) {
          emit(UserState.warning(warningMessage));
        } else {
          final user = User(
              id: getId(),
              name: event.name,
              group: event.group);
          emit(const UserState.processing(
              'Adding user to database'));

          await repository.addUser(user);
          emit(const UserState.processing(
              'Getting user from database after logging'));

          await FirebaseAnalytics.instance.logLogin(
              parameters: <String, Object>{
                'UserID': user.id
              });
          emit(const UserState.processing('Loaded user'));
          emit(UserState.loaded(user));
        }
      } catch (e) {
        rethrow;
      }
    });
    on<GroupsList>((event, emit) =>
        emit(UserState.groupLoaded(event.groups)));
    on<GroupTextFieldChanged>((event, emit) async {
      try {
        _subscription?.cancel();
        final list = repository.findGroup(5, event.group);
        _subscription = list.listen(
          (data) {
            add(GroupsList(groups: data.groups));
          },
        );
      } catch (e) {
        rethrow;
      }
    });
    on<TelegramUserNameRequest>((event, emit) {
      try {
        var user = TelegramWebApp.instance.initData.user;
        event._controller.text = user.firstname ??
            user.username ??
            user.lastname ??
            'dev';
      } catch (e) {
        rethrow;
      }
    });
    on<ResetWarningEvent>((event, emit) {
      emit(const UserState.notAuthorized());
    });
  }
  final ClientRepository repository;
  StreamSubscription? _subscription;
}

abstract class UserEvent {
  const UserEvent();
}

class GetUserEvent extends UserEvent {
  GetUserEvent();
}

class ResetWarningEvent extends UserEvent {}

class AuthenticationRequestedWithoutGroup
    extends UserEvent {}

class TelegramUserNameRequest extends UserEvent {
  final TextEditingController _controller;

  TelegramUserNameRequest(
      {required TextEditingController controller})
      : _controller = controller;
}

class AuthenticationRequested extends UserEvent {
  final String name;
  final String group;
  final bool isLicenseAccepted;
  const AuthenticationRequested(
      {required this.group,
      required this.name,
      required this.isLicenseAccepted});
}

class GroupTextFieldChanged extends UserEvent {
  final String group;

  GroupTextFieldChanged({required this.group});
}

class GroupsList extends UserEvent {
  final List<GroupNumber> groups;

  GroupsList({required this.groups});
}

class SeeUserLicenseRequest extends UserEvent {}

@Freezed()
sealed class UserState with _$UserState {
  const UserState._();
  const factory UserState.processing(String stage) =
      ProcessingState;
  const factory UserState.idle() = IdleState;
  const factory UserState.notAuthorized() =
      NotAuthorizedState;
  const factory UserState.error(Object e) = ErrorState;
  const factory UserState.loaded(User user) = LoadedState;
  const factory UserState.nameLoaded(String name) =
      NameLoadedState;
  const factory UserState.warning(String message) =
      WarningState;
  const factory UserState.groupLoaded(
      List<GroupNumber> groups) = GroupsLoadedState;
}
