// ignore_for_file: camel_case_types

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poly_inside/src/common/repository/client.dart';
import 'package:shared/shared.dart';
import 'package:flutter_telegram_web_app/flutter_telegram_web_app.dart' as tg;

part 'user_bloc.freezed.dart';

int? getId() => 1234567890;
String? getGroup() => '5132704/30003';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({required final UserState state, required this.repository})
      : super(state) {
    on<GetUserEvent>((e, emit) async {
      emit(const UserState.processing('Start logging in'));

      var id = 1234567;
      var name = 'developer';

      try {
        id = tg.initDataUnsafe.user!.id;
        name = tg.initDataUnsafe.user!.first_name;
      } catch (e) {}

      try {
        final id = getId();
        final group = getGroup();
        if (id == null || group == null) {
          throw Exception('User ID is null');
        }
        emit(const UserState.processing('Getting user from database'));

        var user = await repository.getUserByUserId(id);
        if (!user.hasId()) {
          emit(const NotAuthorizedState());
        } else {
          await FirebaseAnalytics.instance
              .logLogin(parameters: <String, Object>{'UserID': user.id});
          emit(const UserState.processing('Loaded user'));
          emit(UserState.loaded(user));
        }
      } on Object catch (error, _) {
        debugPrint(error.toString());
        emit(UserState.error(error));
        rethrow;
      }
    });
    on<AuthenticationRequested>((e, emit) async {
      try {
        final user = User(id: getId(), name: e.name, group: getGroup());
        emit(const UserState.processing('Adding user to database'));

        await repository.addUser(user);
        emit(const UserState.processing(
            'Getting user from database after logging'));

        await FirebaseAnalytics.instance
            .logLogin(parameters: <String, Object>{'UserID': user.id});
        emit(const UserState.processing('Loaded user'));
        emit(UserState.loaded(user));
      } catch (e) {
        rethrow;
      }
    });
    on<GroupsList>((e, emit) => emit(UserState.groupLoaded(e.groups)));
    on<GroupTextFieldChanged>((e, emit) async {
      try {
        _subscription?.cancel();
        final list = repository.findGroup(5, e.group);
        _subscription = list.listen(
          (data) {
            add(GroupsList(groups: data.groups));
          },
        );
      } catch (e) {
        rethrow;
      }
    });
  }
  final ClientRepository repository;
  StreamSubscription? _subscription;
}

abstract class UserEvent {
  const UserEvent();
}

class Request extends UserEvent {}

class GetUserEvent extends UserEvent {
  GetUserEvent();
}

class AuthenticationRequested extends UserEvent {
  final String name;
  const AuthenticationRequested({required this.name});
}

class GroupTextFieldChanged extends UserEvent {
  final String group;

  GroupTextFieldChanged({required this.group});
}

class GroupsList extends UserEvent {
  final List<GroupNumber> groups;

  GroupsList({required this.groups});
}

@Freezed()
sealed class UserState with _$UserState {
  const UserState._();
  const factory UserState.processing(String stage) = ProcessingState;
  const factory UserState.idle() = IdleState;
  const factory UserState.notAuthorized() = NotAuthorizedState;
  const factory UserState.error(Object e) = ErrorState;
  const factory UserState.loaded(User user) = LoadedState;
  const factory UserState.groupLoaded(List<GroupNumber> groups) = GroupsLoadedState;
}
