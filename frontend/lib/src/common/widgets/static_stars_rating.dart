import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/// {@template static_stars_rating}
/// StaticStarsRating widget.
/// {@endtemplate}
// ignore: must_be_immutable
class StaticStarsRating extends StatelessWidget {
  static const String imageUrl = 'assets/icons/star.svg';
  static const Color color = Colors.yellow;
  static const Color baseColor = Colors.grey;
  late final double spaceBetween;
  late final Size size;
  late final double textSize;
  late double value;

  /// {@macro static_stars_rating}
  StaticStarsRating(
      {super.key,
      required this.spaceBetween,
      required this.size,
      required this.textSize,
      required this.value // ignore: unused_element
      });

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Row(
        children: [
          Row(
            children: [
              for (int i = 0; i < 5; i++)
                Stack(
                  children: [
                    SizedBox(
                      width: size.width,
                      height: size.height,
                      child: SvgPicture.asset(
                        imageUrl,
                        colorFilter:
                            const ColorFilter.mode(baseColor, BlendMode.srcIn),
                      ),
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
                      blendMode: BlendMode.srcATop,
                      child: SizedBox(
                        width: size.width,
                        height: size.height,
                        child: SvgPicture.asset(
                          imageUrl,
                          colorFilter:
                              const ColorFilter.mode(baseColor, BlendMode.srcIn),
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
