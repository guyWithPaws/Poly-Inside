import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:grpc/service_api.dart';
import 'package:poly_inside/src/common/repository/client.dart';
import 'package:poly_inside/src/common/repository/client_impl.dart';
import 'package:poly_inside/src/feature/initialization/model/client_stub.dart'
    if (dart.library.js_interop) 'package:poly_inside/src/feature/initialization/model/client_web.dart'
    if (dart.library.io) 'package:poly_inside/src/feature/initialization/model/client_io.dart';
import 'package:shared/shared.dart';

part 'init_bloc.freezed.dart';

/// {@template Initialization_placeholder}
/// Entity placeholder for init_blocState
/// {@endtemplate}

enum AppMode { dev, prod }

AppMode getCurrentMode() {
  const mode = String.fromEnvironment('MODE', defaultValue: 'DEV');
  return AppMode.values.firstWhere(
    (e) => e.toString().split('.').last.toUpperCase() == mode,
    orElse: () => AppMode.dev,
  );
}

ClientChannel getChannelForMode(AppMode mode) {
  switch (mode) {
    case AppMode.dev:
      return getLocalhostChannel();
    case AppMode.prod:
      return getChannel();
  }
}

class InitializationBloc
    extends Bloc<InitializationEvent, InitializationState> {
  InitializationBloc(super.initialState) {
    on<StartInitialization>((e, emit) async {
      emit(const InitializationState.processing());
      try {
        final mode = getCurrentMode();
        final channel = getChannelForMode(mode);
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
