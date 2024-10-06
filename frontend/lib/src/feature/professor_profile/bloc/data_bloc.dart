import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poly_inside/src/common/repository/client.dart';
import 'package:shared/shared.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;

part 'data_bloc.freezed.dart';

abstract class DataEvent {}

class DataRequested extends DataEvent {
  final String professorId;
  DataRequested({required this.professorId});
}

class NewListEvent extends DataEvent {
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
sealed class DataState with _$DataState {
  const DataState._();
  const factory DataState.processing() = ProcessingState;
  const factory DataState.idle() = IdleState;
  const factory DataState.error(Object e) = ErrorState;
  const factory DataState.loaded(List<ReviewWithUser> professors) = LoadedState;
}

/// Business Logic Component DataBLoC
class DataBLoC extends Bloc<DataEvent, DataState> {
  DataBLoC({
    required final ClientRepository repository,
    final DataState? initialState,
  })  : _repository = repository,
        _controller = StreamController<List<ReviewWithUser>>(),
        super(
          initialState ?? const DataState.idle(),
        ) {
    _controller?.stream.listen((event) => add(NewListEvent(professors: event)));
    on<NewListEvent>(
      (event, emit) {
        emit(
          DataState.loaded(event.professors),
        );
      },
      transformer: bloc_concurrency.sequential(),
    );
    on<DataRequested>(
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
