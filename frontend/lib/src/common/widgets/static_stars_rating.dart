import 'package:flutter/material.dart';

/// {@template static_stars_rating}
/// StaticStarsRating widget.
/// {@endtemplate}
// ignore: must_be_immutable
class StaticStarsRating extends StatelessWidget {
  static const String starUrl = 'assets/icons/star_png.png';
  static const String greyStarUrl = 'assets/icons/grey_star_png.png';
  static const Color color = Colors.yellow;
  late final double spaceBetween;
  late final double size;
  late final double textSize;
  late double value;

  /// {@macro static_stars_rating}
  StaticStarsRating(
      {super.key, required this.spaceBetween, required this.size, required this.textSize, required this.value});

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Row(
        children: [
          Row(
            children: [
              for (int i = 0; i < 5; ++i)
                i < int.parse(value.toStringAsFixed(0)) || i > int.parse(value.toStringAsFixed(0))
                    ? SizedBox(
                        width: size,
                        height: size,
                        child: Image.asset((i < int.parse(value.toStringAsFixed(0))) ? starUrl : greyStarUrl),
                      )
                    : Stack(
                        children: [
                          SizedBox(
                            width: size,
                            height: size,
                            child: Image.asset(greyStarUrl),
                          ),
                          ShaderMask(
                            shaderCallback: (bounds) {
                              final fillGradient = LinearGradient(
                                begin: Alignment.bottomLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  color,
                                  color.withOpacity(0),
                                ],
                                stops: [
                                  (value - i >= 0) ? (value - i) : 0,
                                  (value - i >= 0) ? (value - i) : 0,
                                ],
                              );
                              return fillGradient.createShader(bounds);
                            },
                            child: SizedBox(
                              width: size,
                              height: size,
                              child: Image.asset(
                                starUrl,
                              ),
                            ),
                          ),
                        ],
                      )
            ],
          ),
          SizedBox(width: spaceBetween),
          Column(
            children: [
              const SizedBox(
                height: 3,
              ),
              Text(
                value.toStringAsFixed(1),
                style: TextStyle(
                  fontSize: textSize,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
