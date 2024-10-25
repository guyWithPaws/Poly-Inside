import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:poly_inside/src/feature/authentication/widget/user_scope.dart';
import 'package:shared/shared.dart';
import 'package:animated_flip_counter/animated_flip_counter.dart';

import '../../feature/initialization/widget/initialization.dart';
import '../enums/reaction_type.dart';

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

  ValueNotifier<bool>? _isLikedNotifier;
  ValueNotifier<bool>? _isDislikedNotifier;
  ValueNotifier<int>? _likeCounter;
  ValueNotifier<int>? _dislikeCounter;

  String _generateId(String professorId, String reviewId) {
    var idBytes = utf8.encode(
        UserScope.userOf(context).id.toString() + professorId + reviewId);
    var id = sha1.convert(idBytes).toString();
    return id;
  }

  void _onLikeTap() {
    if (!_isLikedNotifier!.value && !_isDislikedNotifier!.value) {
      debugPrint('Нажато впервые лайк');
      InitializationScope.repositoryOf(context).addReaction(
        Reaction(
            id: _generateId(widget.professor!.id, widget.review!.id),
            professorId: widget.professor!.id,
            reviewId: widget.review!.id,
            userId: UserScope.userOf(context).id,
            type: 1),
      );
    } else if (!_isLikedNotifier!.value && _isDislikedNotifier!.value) {
      debugPrint('Поменяли с дизлайка на лайк');
      InitializationScope.repositoryOf(context).updateReaction(
        Reaction(
            id: _generateId(widget.professor!.id, widget.review!.id),
            professorId: widget.professor!.id,
            reviewId: widget.review!.id,
            userId: UserScope.userOf(context).id,
            type: 1),
      );
    } else if (_isLikedNotifier!.value && !_isDislikedNotifier!.value) {
      debugPrint('Убрали лайк');
      InitializationScope.repositoryOf(context)
          .deleteReaction(_generateId(widget.professor!.id, widget.review!.id));
    }
    _isLikedNotifier!.value = !_isLikedNotifier!.value;
    _likeCounter!.value += _isLikedNotifier!.value ? 1 : -1;

    _dislikeCounter!.value += _isDislikedNotifier!.value ? -1 : 0;
    _isDislikedNotifier!.value = false;

    _isLikedNotifier!.value
        ? _likeAnimationController?.forward()
        : _likeAnimationController?.reverse();
    _dislikeAnimationController!.reverse();
  }

  void _onDislikeTap() {
    if (!_isLikedNotifier!.value && !_isDislikedNotifier!.value) {
      debugPrint('Нажато впервые дизлайк');
      InitializationScope.repositoryOf(context).addReaction(
        Reaction(
            id: _generateId(widget.professor!.id, widget.review!.id),
            professorId: widget.professor!.id,
            reviewId: widget.review!.id,
            userId: UserScope.userOf(context).id,
            type: 0),
      );
    } else if (_isLikedNotifier!.value && !_isDislikedNotifier!.value) {
      debugPrint('Поменяли с лайка на дизлайк');
      InitializationScope.repositoryOf(context).updateReaction(
        Reaction(
            id: _generateId(widget.professor!.id, widget.review!.id),
            professorId: widget.professor!.id,
            reviewId: widget.review!.id,
            userId: UserScope.userOf(context).id,
            type: 0),
      );
    } else if (!_isLikedNotifier!.value && _isDislikedNotifier!.value) {
      debugPrint('Убрали дизлайк');
      InitializationScope.repositoryOf(context)
          .deleteReaction(_generateId(widget.professor!.id, widget.review!.id));
    }
    _isDislikedNotifier!.value = !_isDislikedNotifier!.value;
    _dislikeCounter!.value += _isDislikedNotifier!.value ? 1 : -1;

    _likeCounter!.value += _isLikedNotifier!.value ? -1 : 0;
    _isLikedNotifier!.value = false;


    _isDislikedNotifier!.value
        ? _dislikeAnimationController?.forward()
        : _dislikeAnimationController?.reverse();
    _likeAnimationController!.reverse();
  }

  @override
  void initState() {
    _likeCounter = ValueNotifier(widget.review!.likes);
    _dislikeCounter = ValueNotifier(widget.review!.dislikes);

    _isDislikedNotifier = ValueNotifier(false);
    _isLikedNotifier = ValueNotifier(false);
    if (widget.reaction!.id.isNotEmpty) {
      debugPrint('huuuui ${widget.reaction!.type.toString()}');
      if (widget.reaction!.type == 1) {
        _isLikedNotifier!.value = true;
      } else if (widget.reaction!.type == 0){
        _isDislikedNotifier!.value = true;
      }
    }

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
  void dispose() {
    _likeAnimationController?.dispose();
    _dislikeAnimationController?.dispose();

    _isLikedNotifier?.dispose();
    _isDislikedNotifier?.dispose();
    _likeCounter?.dispose();
    _dislikeCounter?.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ValueListenableBuilder(
          valueListenable: _isLikedNotifier!,
          builder: (context, isLiked, _) => Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: UserScope.userOf(context).id != widget.review!.userId
                    ? _onLikeTap
                    : null,
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
              ValueListenableBuilder(
                valueListenable: _likeCounter!,
                builder: (context, likeCount, _) => AnimatedFlipCounter(
                  value: likeCount,
                  duration: const Duration(milliseconds: 200),
                  textStyle: TextStyle(
                    color: isLiked
                        ? const Color.fromRGBO(0, 0, 0, 1)
                        : const Color.fromARGB(255, 138, 138, 138),
                    fontWeight: isLiked ? FontWeight.w600 : FontWeight.w400,
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(width: 16),
        ValueListenableBuilder(
          valueListenable: _isDislikedNotifier!,
          builder: (context, isDisliked, _) => Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: UserScope.userOf(context).id != widget.review!.userId
                    ? _onDislikeTap
                    : null,
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
              ValueListenableBuilder(
                valueListenable: _dislikeCounter!,
                builder: (context, dislikeCount, _) => AnimatedFlipCounter(
                  value: dislikeCount,
                  duration: const Duration(microseconds: 200),
                  textStyle: TextStyle(
                    color: isDisliked
                        ? Colors.black
                        : const Color.fromARGB(255, 138, 138, 138),
                    fontWeight: isDisliked ? FontWeight.w600 : FontWeight.w400,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
