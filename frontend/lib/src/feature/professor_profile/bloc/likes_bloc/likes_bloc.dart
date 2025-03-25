import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'likes_bloc.freezed.dart';

abstract class LikeEvent {}

class AddLike extends LikeEvent {}

class RemoveLike extends LikeEvent {}

class UpdateLike extends LikeEvent {}

@Freezed()
sealed class LikeState with _$LikeState {
  const LikeState._();
  const factory LikeState.processing() =
      ProcessingLikeState;
  const factory LikeState.idle() = IdleLikeState;
  const factory LikeState.error(Object e) = ErrorLikeState;
  const factory LikeState.added() = AddedLikeState;
  const factory LikeState.removed() = RemovedLikeState;
}

class LikeBLoC extends Bloc<LikeEvent, LikeState> {
  LikeBLoC() : super(const LikeState.idle()) {
    on<AddLike>((event, emit) {});
  }
}
