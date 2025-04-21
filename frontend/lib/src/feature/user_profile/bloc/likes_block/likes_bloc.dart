import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/shared.dart';

import '../../../../common/repository/client.dart';
import '../../../authentication/widget/user_scope.dart';
import '../../../initialization/widget/initialization.dart';

part 'likes_bloc.freezed.dart';

abstract class LikesBlocEvent {}

@Freezed()
sealed class LikesState with _$LikesState {
  const LikesState._();
  const factory LikesState.processing() = ProcessingState;
  const factory LikesState.idle() = IdleState;
  const factory LikesState.error(Object e) = ErrorState;
  const factory LikesState.success() = SuccessState;
}

class AddLike extends LikesBlocEvent {
  AddLike({required this.reviewId, required this.professorId});

  String reviewId;
  String professorId;
}

class AddDislike extends LikesBlocEvent {
  AddDislike({required this.reviewId});

  String reviewId;
}

class LikesBLoC extends Bloc<LikesBlocEvent, LikesState> {
  LikesBLoC({
    required final ClientRepository repository,
  })  : _repository = repository,
        super(
          const LikesState.idle(),
        ) {
    on<AddLike>((event, emit) {
      var id = DateTime.now();
      _repository.addReaction(
        Reaction(
            id: id.toString(),
            professorId: event.professorId,
            reviewId: event.reviewId,
            userId: 1234567890,
            type: 0),
      );
    });
    on<AddDislike>((event, emit) {
      print(event.reviewId);
    });
  }

  final ClientRepository _repository;
}
