import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:poly_inside/src/feature/authentication/widget/user_scope.dart';
import 'package:shared/shared.dart';
import 'package:animated_flip_counter/animated_flip_counter.dart';

import '../../feature/initialization/widget/initialization.dart';

enum ReactionType {
  like,
  dislike;

  String get path {
    switch (this) {
      case ReactionType.like:
        return 'assets/icons/like.svg';
      case ReactionType.dislike:
        return 'assets/icons/dislike.svg';
    }
  }
}

class Reactions extends StatefulWidget {
  final Review? review;
  final Professor? professor;
  final Reaction? reaction;

  const Reactions({
    super.key,
    this.review,
    this.professor,
    this.reaction,
  });

  @override
  // ignore: library_private_types_in_public_api
  _ReactionsState createState() => _ReactionsState();
}

class _ReactionsState extends State<Reactions> with TickerProviderStateMixin {
  AnimationController? _likeAnimationController;
  AnimationController? _dislikeAnimationController;

  bool isLiked = false;
  bool isDisliked = false;
  late int likeCount;
  late int dislikeCount;

  void _onLikeTap() {
    setState(() {
      dislikeCount += isDisliked ? -1 : 0;
      isDisliked = false;
      isLiked = !isLiked;
      likeCount += isLiked ? 1 : -1;
    });
<<<<<<< HEAD
    if (isLiked) {
      InitializationScope.repositoryOf(context).addReaction(
          UserScope.userOf(context).id,
          widget.professor!.id,
          widget.review!.reviewId,
          true);
    }

=======
    debugPrint('User Id: ${UserScope.userOf(context).id.toString()}');
    debugPrint('Professor Id: ${widget.professor!.id}');
    debugPrint('Review Id: ${widget.review!.reviewId}');
    InitializationScope.repositoryOf(context).addReaction(
        UserScope.userOf(context).id,
        widget.professor!.id,
        widget.review!.reviewId,
        true);
>>>>>>> 8fd50c20b0f0e3ee72675df97ef6f15f32a7fda8
    isLiked
        ? _likeAnimationController?.forward()
        : _likeAnimationController?.reverse();
    _dislikeAnimationController!.reverse();
  }

  void _onDislikeTap() {
    setState(() {
      likeCount += isLiked ? -1 : 0;
      isLiked = false;
      isDisliked = !isDisliked;
      dislikeCount += isDisliked ? 1 : -1;
<<<<<<< HEAD
    });
    if (isDisliked) {
      InitializationScope.repositoryOf(context).addReaction(
          UserScope.userOf(context).id,
          widget.professor!.id,
          widget.review!.reviewId,
          false);
    } else {
      InitializationScope.repositoryOf(context).deleteReaction(Reaction());
    }

=======
      InitializationScope.repositoryOf(context).addReaction(
          UserScope.userOf(context).id,
          widget.professor!.id,
          widget.review!.reviewId,
          false);
    });
>>>>>>> 8fd50c20b0f0e3ee72675df97ef6f15f32a7fda8
    isDisliked
        ? _dislikeAnimationController?.forward()
        : _dislikeAnimationController?.reverse();
    _likeAnimationController!.reverse();
  }

  @override
  void initState() {
    likeCount = widget.review!.dislikes;
    dislikeCount = widget.review!.dislikes;

    _likeAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _dislikeAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: _onLikeTap,
              //onTap: UserScope.userOf(context).id != widget.review!.userId ? _onLikeTap : null,
              child: ScaleTransition(
                scale: Tween<double>(
                  begin: 1.0,
                  end: 1.2,
                ).animate(_likeAnimationController!),
                child: SvgPicture.asset(
                  ReactionType.like.path,
                  alignment: Alignment.bottomRight,
                  colorFilter: ColorFilter.mode(
                      isLiked
                          ? const Color.fromARGB(255, 34, 166, 64)
                          : const Color.fromARGB(255, 138, 138, 138),
                      BlendMode.srcIn),
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            AnimatedFlipCounter(
              value: likeCount,
              duration: const Duration(milliseconds: 200),
              textStyle: TextStyle(
                color: isLiked
                    ? const Color.fromRGBO(0, 0, 0, 1)
                    : const Color.fromARGB(255, 138, 138, 138),
                fontWeight: isLiked ? FontWeight.w600 : FontWeight.w400,
              ),
            )
          ],
        ),
        const SizedBox(width: 16),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: _onDislikeTap,
              //onTap: UserScope.userOf(context).id != widget.review!.userId ? _onDislikeTap : null,
              child: ScaleTransition(
                scale: Tween<double>(
                  begin: 1.0,
                  end: 1.2,
                ).animate(_dislikeAnimationController!),
                child: SvgPicture.asset(
                  ReactionType.dislike.path,
                  alignment: Alignment.bottomRight,
                  colorFilter: ColorFilter.mode(
                      isDisliked
                          ? Colors.red
                          : const Color.fromARGB(255, 138, 138, 138),
                      BlendMode.srcIn),
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            AnimatedFlipCounter(
              value: dislikeCount,
              duration: const Duration(microseconds: 200),
              textStyle: TextStyle(
                color: isDisliked
                    ? Colors.black
                    : const Color.fromARGB(255, 138, 138, 138),
                fontWeight: isDisliked ? FontWeight.w600 : FontWeight.w400,
              ),
            )
          ],
        ),
      ],
    );
  }
}
