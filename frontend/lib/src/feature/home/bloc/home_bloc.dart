import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poly_inside/src/common/repository/client.dart';
import 'package:poly_inside/src/feature/authentication/widget/user_scope.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared/shared.dart';

part 'home_bloc.freezed.dart';

abstract class HomePageEvent {}

class ListRequested extends HomePageEvent {
  final int count;
  final String group;
  ListRequested({required this.count, required this.group});
  @override
  int get hashCode => count.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ListRequested &&
          runtimeType == other.runtimeType &&
          count == other.count;
}

class AddListToState extends HomePageEvent {
  List<Professor> professors;
  AddListToState({required this.professors});

  @override
  int get hashCode => professors.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AddListToState &&
          runtimeType == other.runtimeType &&
          professors == other.professors;
}

class TextFieldChanged extends HomePageEvent {
  final String name;
  TextFieldChanged({required this.name});

  @override
  int get hashCode => name.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TextFieldChanged &&
          runtimeType == other.runtimeType &&
          name == other.name;
}

/// InitializationState data class
@Freezed()
sealed class HomePageState with _$HomePageState {
  const HomePageState._();
  const factory HomePageState.processing() = ProcessingState;
  const factory HomePageState.idle() = IdleState;
  const factory HomePageState.error(Object e) = ErrorState;
  const factory HomePageState.loaded(List<Professor> professors) = LoadedState;
}

class HomeBloc extends Bloc<HomePageEvent, HomePageState> {
  HomeBloc({required this.repository})
      : _controller = StreamController<List<Professor>>(),
        super(const HomePageState.idle()) {
    _controller?.stream
        .listen((event) => add(AddListToState(professors: event)));
    on<AddListToState>(
        (event, emit) => emit(HomePageState.loaded(event.professors)));
    on<ListRequested>(
      (event, emit) async {
        try {
          final stream = repository.getProfessorsByGroup(
              event.count, event.group);
          stream.listen((e) => add(AddListToState(professors: e.professors)));
        } on Object catch (error, _) {
          emit(HomePageState.error(error));
          rethrow;
        }
      },
      transformer: (events, mapper) => events
          .debounceTime(
            const Duration(milliseconds: 100),
          )
          .throttleTime(
            const Duration(milliseconds: 100),
          )
          .asyncExpand(mapper),
    );
    on<TextFieldChanged>(
      (event, emit) async {
        await FirebaseAnalytics.instance.logSearch(searchTerm: event.name);
        try {
          final list = await repository.findProfessorByName(event.name, 30);
          _controller?.add(list.professors);
        } on Object catch (error, _) {
          emit(HomePageState.error(error));
          rethrow;
        }
      },
      transformer: (events, mapper) => events
          .debounceTime(
            const Duration(milliseconds: 100),
          )
          .throttleTime(
            const Duration(milliseconds: 100),
          )
          .asyncExpand(mapper),
    );
  }

  @override
  Future<void> close() {
    _controller?.close();
    return super.close();
  }

  final StreamController<List<Professor>>? _controller;
  final ClientRepository repository;
}
