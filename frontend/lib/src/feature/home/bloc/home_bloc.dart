import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poly_inside/src/common/repository/client.dart';
import 'package:shared/shared.dart';

part 'home_bloc.freezed.dart';

// class HomeBloc extends Bloc<HomeEvent, HomeState> {
//   HomeBloc(super.initialState, {required this.repository}) {
//     on<RequestList>((event, emit) async {
//       try {
//         final data = repository.getAllProfessors();
//         data.listen((professor) {
//           if (state is Initialized) {
//             emit(HomeState.current(
//                 []..addAll((state as Initialized).professors)..add(professor)));
//           }
//         });
//       } on Object catch (error) {
//         emit(HomeState.error(error));
//       }
//     });
//   }
//   final ClientRepository repository;
// }

abstract class HomeEvent {}

class RequestList extends HomeEvent {}

@Freezed()
sealed class HomeState with _$HomeState {
  const HomeState._();
  const factory HomeState.current(List<Professor> professors) = Initialized;
  const factory HomeState.error(Object e) = ErrorState;
}
