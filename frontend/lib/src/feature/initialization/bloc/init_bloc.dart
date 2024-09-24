// ignore_for_file: camel_case_types
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:bloc/bloc.dart';
//import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_web.dart';
import 'package:poly_inside/src/common/repository/client.dart';
import 'package:poly_inside/src/common/repository/client_impl.dart';
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
        // final channel = ClientChannel(
        //   '87.228.18.201',
        //   port: 9090,
        //   options: const ChannelOptions(
        //     credentials: ChannelCredentials.insecure(),
        //   ),
        // );
        final channel = GrpcWebClientChannel.xhr(Uri.parse('http://87.228.18.201:8080'));
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
