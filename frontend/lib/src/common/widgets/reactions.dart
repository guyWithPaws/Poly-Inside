import 'package:flutter/widgets.dart';

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

  /// {@macro reactions}
  const Reactions({
    super.key,
    required this.type, // ignore: unused_element
  });

  @override
  Widget build(BuildContext context) => const Placeholder();
}
