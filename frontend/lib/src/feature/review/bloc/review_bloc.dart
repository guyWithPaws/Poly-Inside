import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/shared.dart';

import '../../initialization/widget/initialization.dart';

part 'review_bloc.freezed.dart';

abstract class ReviewDataEvent {}

class AddReviewRequest extends ReviewDataEvent {
  final Review review;
  final BuildContext context;

  AddReviewRequest({required this.context, required this.review});
}

class UpdateReviewRequest extends ReviewDataEvent {
  final Review review;
  final BuildContext context;

  UpdateReviewRequest({required this.review, required this.context});
}

class ReviewDataBLoC extends Bloc<ReviewDataEvent, ReviewDataState> {
  ReviewDataBLoC() : super(const ReviewDataState.processing()) {
    on<AddReviewRequest>((event, emit) async {
      // print(event.review.comment.length);
      // if (event.review.comment.isNotEmpty) {
      //   emit(const ReviewDataState.error(Object(), 'Отзыв слишком короткий'));
      // }
      try {
        var passed = await InitializationScope.repositoryOf(event.context)
            .addReview(event.review);
        passed
            ? emit(const ReviewDataState.approved())
            : emit(const ReviewDataState.rejected());
      } catch (e) {
        emit(ReviewDataState.error(e, ''));
        rethrow;
      }
    });
    on<UpdateReviewRequest>((event, emit) async {
      try {
        var passed = true;
        await InitializationScope.repositoryOf(event.context)
            .updateReview(event.review);
        passed
            ? emit(const ReviewDataState.approved())
            // ignore: dead_code
            : emit(const ReviewDataState.rejected());
      } catch (e) {
        emit(ReviewDataState.error(e, ''));
        rethrow;
      }
    });
  }
}

@Freezed()
sealed class ReviewDataState with _$ReviewDataState {
  const ReviewDataState._();
  const factory ReviewDataState.processing() = ProcessingState;
  const factory ReviewDataState.error(Object e, String description) =
      ErrorState;
  const factory ReviewDataState.approved() = ApprovedState;
  const factory ReviewDataState.rejected() = RejectedState;
}
