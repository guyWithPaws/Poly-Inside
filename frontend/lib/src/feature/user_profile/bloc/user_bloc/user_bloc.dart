import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poly_inside/src/common/repository/client.dart';
import 'package:shared/shared.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;

part 'user_bloc.freezed.dart';

abstract class ProfileDataEvent {}

class ProfileDataRequested extends ProfileDataEvent {
  final int userId;
  ProfileDataRequested({required this.userId});
}

class NewListEvent extends ProfileDataEvent {
  List<ReviewWithProfessor> professors;
  NewListEvent({required this.professors});

  @override
  int get hashCode => professors.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NewListEvent &&
          runtimeType == other.runtimeType &&
          professors == other.professors;
}

@Freezed()
sealed class ProfileDataState with _$ProfileDataState {
  const ProfileDataState._();
  const factory ProfileDataState.processing() = ProcessingState;
  const factory ProfileDataState.idle() = IdleState;
  const factory ProfileDataState.error(Object e) = ErrorState;
  const factory ProfileDataState.groupsLoaded(List<Group> groups) =
      GroupsLoadedState;
  const factory ProfileDataState.loaded(List<ReviewWithProfessor> professors) =
      LoadedState;
}

/// Business Logic Component DataBLoC
class ProfileDataBLoC extends Bloc<ProfileDataEvent, ProfileDataState> {
  ProfileDataBLoC({
    required final ClientRepository repository,
    final ProfileDataState? initialState,
  })  : _repository = repository,
        _controller = StreamController<List<ReviewWithProfessor>>(),
        super(
          initialState ?? const ProfileDataState.idle(),
        ) {
    _controller?.stream.listen((event) => add(NewListEvent(professors: event)));
    on<NewListEvent>(
      (event, emit) {
        emit(
          ProfileDataState.loaded(event.professors),
        );
      },
      transformer: bloc_concurrency.sequential(),
    );
    on<ProfileDataRequested>(
      (event, emit) {
        _subscription =
            _repository.getReviewsWithProfessor(event.userId).listen(
                  (e) => add(
                    NewListEvent(
                      professors: e.list,
                    ),
                  ),
                );
      },
    );
  }

  final StreamController<List<ReviewWithProfessor>>? _controller;
  final ClientRepository _repository;
  StreamSubscription<ReviewWithProfessorResponse>? _subscription;

  @override
  Future<void> close() {
    _subscription?.cancel();
    _controller?.close();
    return super.close();
  }

  // /// Fetch event handler
  // Future<void> _fetch(FetchDataEvent event, Emitter<DataState> emit) async {
  //   try {
  //     emit(DataState.processing(data: state.data));
  //     final newData = await _repository.fetch(event.id);
  //     emit(DataState.successful(data: newData));
  //   } on Object catch (err, stackTrace) {
  //     //l.e('An error occurred in the DataBLoC: $err', stackTrace);
  //     emit(DataState.error(data: state.data));
  //     rethrow;
  //   } finally {
  //     emit(DataState.idle(data: state.data));
  //   }
  // }
}
