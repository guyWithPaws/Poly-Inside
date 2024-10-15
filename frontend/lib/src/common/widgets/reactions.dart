import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared/shared.dart';
import 'package:animated_flip_counter/animated_flip_counter.dart';

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

  const Reactions({
    super.key,
    this.review,
    this.professor, // ignore: unused_element
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
  int likeCount = 10;
  int dislikeCount = 5;

  void _onLikeTap() {
    setState(() {
      
    });
  }

  @override
  void initState() {
    super.initState();
    _likeAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _dislikeAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
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
              
              onTap: () {
                setState(() {
                  dislikeCount += isDisliked ? -1 : 0;
                  isDisliked = false;
                  isLiked = !isLiked;
                  likeCount += isLiked ? 1 : -1;
                  // InitializationScope.repositoryOf(context).addReaction(
                  //     UserScope.userOf(context).id,
                  //     widget.professor!.id,
                  //     widget.review!.reviewId,
                  //     true);
                });
                isLiked
                    ? _likeAnimationController?.forward()
                    : _likeAnimationController?.reverse();
                _dislikeAnimationController!.reverse();
              },
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
              onTap: () {
                setState(() {
                  likeCount += isLiked ? -1 : 0;
                  isLiked = false;
                  isDisliked = !isDisliked;
                  dislikeCount += isDisliked ? 1 : -1;
                  // InitializationScope.repositoryOf(context).addReaction(
                  //     UserScope.userOf(context).id,
                  //     widget.professor!.id,
                  //     widget.review!.reviewId,
                  //     false);
                });
                isDisliked
                    ? _dislikeAnimationController?.forward()
                    : _dislikeAnimationController?.reverse();
                _likeAnimationController!.reverse();
              },
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
