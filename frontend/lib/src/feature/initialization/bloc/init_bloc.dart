// ignore_for_file: camel_case_types
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:poly_inside/src/common/repository/client.dart';
import 'package:poly_inside/src/common/repository/client_impl.dart';
import 'package:poly_inside/src/feature/initialization/model/client_stub.dart'
    if (dart.library.html) 'package:poly_inside/src/feature/initialization/model/client_web.dart'
    if (dart.library.io) 'package:poly_inside/src/feature/initialization/model/client_io.dart';
import 'package:shared/shared.dart';

part 'init_bloc.freezed.dart';

/// {@template Initialization_placeholder}
/// Entity placeholder for init_blocState
/// {@endtemplate}

class InitializationBloc
    extends Bloc<InitializationEvent, InitializationState> {
  InitializationBloc(super.initialState) {
    on<StartInitialization>((e, emit) async {
      emit(const InitializationState.processing());
      try {
        final channel = getLocalhostChannel();
        final client = SearchServiceClient(channel);
        final repostory = ClientRepositoryImpl(client: client);
        emit(InitializationState.initialized(repostory));
      } on Object catch (e) {
        emit(InitializationState.error(e));
      }
    });
  }
}

abstract class InitializationEvent {}

class StartInitialization extends InitializationEvent {}

/// InitializationState data class
@Freezed()
sealed class InitializationState with _$InitializationState {
  const InitializationState._();
  const factory InitializationState.processing() = Processing;
  const factory InitializationState.idle() = Idle;
  const factory InitializationState.error(Object e) = Error;
  const factory InitializationState.initialized(ClientRepository repository) =
      Initialized;
}
