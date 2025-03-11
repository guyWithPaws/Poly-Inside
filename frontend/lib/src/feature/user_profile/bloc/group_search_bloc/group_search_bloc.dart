import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/shared.dart';

import '../../../../common/repository/client.dart';

part 'group_search_bloc.freezed.dart';

abstract class GroupSearchEvent {}

@Freezed()
sealed class GroupSearchState with _$GroupSearchState {
  const GroupSearchState._();
  const factory GroupSearchState.processing() = ProcessingState;
  const factory GroupSearchState.idle() = IdleState;
  const factory GroupSearchState.error(Object e) = ErrorState;
  const factory GroupSearchState.loaded(List<GroupNumber> groups) = LoadedState;
  const factory GroupSearchState.approved() = ApprovedState;
}

class GroupTextFieldChanged extends GroupSearchEvent {
  String groupNumber;
  GroupTextFieldChanged({required this.groupNumber});

  @override
  int get hashCode => groupNumber.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GroupTextFieldChanged &&
          runtimeType == other.runtimeType &&
          groupNumber == other.groupNumber;
}

class GroupsNumbersList extends GroupSearchEvent {
  List<GroupNumber> groupsNumbers;
  GroupsNumbersList({required this.groupsNumbers});

  @override
  int get hashCode => groupsNumbers.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GroupsNumbersList &&
          runtimeType == other.runtimeType &&
          groupsNumbers == other.groupsNumbers;
}

class UpdateGroupNumberRequest extends GroupSearchEvent {
  final String groupNumber;

  UpdateGroupNumberRequest({required this.groupNumber});
}

class GroupSearchBLoC extends Bloc<GroupSearchEvent, GroupSearchState> {
  final ClientRepository _repository;
  StreamSubscription<GetListGroupsResponce>? _groupsNumbersSubscription;

  GroupSearchBLoC({
    required final ClientRepository repository,
  })  : _repository = repository,
        super(
          const GroupSearchState.idle(),
        ) {
    on<GroupTextFieldChanged>((event, emit) {
      _groupsNumbersSubscription?.cancel();
      _groupsNumbersSubscription =
          _repository.findGroup(10, event.groupNumber).listen(
            
                (e) => add(
                  GroupsNumbersList(groupsNumbers: e.groups),
                ),
              );
    });
    on<GroupsNumbersList>((event, emit) {
      emit(GroupSearchState.loaded(event.groupsNumbers));
    });
    on<UpdateGroupNumberRequest>((event, emit) {});
  }

  @override
  Future<void> close() {
    _groupsNumbersSubscription?.cancel();
    return super.close();
  }
}
