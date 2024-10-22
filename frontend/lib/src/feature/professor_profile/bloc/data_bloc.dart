import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poly_inside/src/common/repository/client.dart';
import 'package:shared/shared.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;

part 'data_bloc.freezed.dart';

abstract class ProfessorDataEvent {}

class ProfessorDataRequested extends ProfessorDataEvent {
  final String professorId;
  ProfessorDataRequested({required this.professorId});
}

class NewListEvent extends ProfessorDataEvent {
  List<ReviewWithUser> professors;
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
sealed class ProfessorDataState with _$ProfessorDataState {
  const ProfessorDataState._();
  const factory ProfessorDataState.processing() = ProcessingProfessorState;
  const factory ProfessorDataState.idle() = IdleProfessorState;
  const factory ProfessorDataState.error(Object e) = ErrorProfessorState;
  const factory ProfessorDataState.loaded(List<ReviewWithUser> professors) =
      LoadedProfessorState;
}

/// Business Logic Component DataBLoC
class ProfessorDataBLoC extends Bloc<ProfessorDataEvent, ProfessorDataState> {
  ProfessorDataBLoC({
    required final ClientRepository repository,
    final ProfessorDataState? initialState,
  })  : _repository = repository,
        _controller = StreamController<List<ReviewWithUser>>(),
        super(
          initialState ?? const ProfessorDataState.idle(),
        ) {
    _controller?.stream.listen((event) => add(NewListEvent(professors: event)));
    on<NewListEvent>(
      (event, emit) {
        emit(
          ProfessorDataState.loaded(event.professors),
        );
      },
      transformer: bloc_concurrency.sequential(),
    );
    on<ProfessorDataRequested>(
      (event, emit) {
        _subscription =
            _repository.getAllReviewsByProfessor(event.professorId).listen(
                  (e) => add(
                    NewListEvent(
                      professors: e.list,
                    ),
                  ),
                );
      },
    );
  }

  final StreamController<List<ReviewWithUser>>? _controller;
  final ClientRepository _repository;
  StreamSubscription<ReviewWithUserResponse>? _subscription;

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
