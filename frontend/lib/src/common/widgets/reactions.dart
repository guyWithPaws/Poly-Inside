import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared/shared.dart';
import 'package:flutter_animate/flutter_animate.dart';

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

  const Reactions({
    super.key,
    this.review, // ignore: unused_element
  });

  @override
  // ignore: library_private_types_in_public_api
  _ReactionsState createState() => _ReactionsState();
}

class _ReactionsState extends State<Reactions> with TickerProviderStateMixin {
  AnimationController? _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this);
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
                _animationController?.forward();
              },
              child: ScaleTransition(
                scale: _animationController!,
                child: SvgPicture.asset(
                  'assets/icons/like.svg',
                  alignment: Alignment.bottomRight,
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              '${widget.review!.likes}',
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
        const SizedBox(width: 16),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/dislike.svg',
              alignment: Alignment.bottomRight,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              '${widget.review!.dislikes}',
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}
