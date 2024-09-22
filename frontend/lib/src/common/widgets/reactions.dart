import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared/shared.dart';

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

/// {@template reactions}
/// Reactions widget.
/// {@endtemplate}
class Reactions extends StatelessWidget {
  final ReactionType type;
  final Review? review;

  /// {@macro reactions}
  const Reactions({
    super.key,
    required this.type, this.review, // ignore: unused_element
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/like.svg',
              alignment: Alignment.bottomRight,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              '${review!.likes}',
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
              '${review!.dislikes}',
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}
