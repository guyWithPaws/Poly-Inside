import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/// {@template home_page}
/// HomePage widget.
/// {@endtemplate}
class StarsRating extends StatelessWidget {
  static const String imageUrl = 'assets/icons/star.svg';
  static const Color color = Colors.yellow;
  static const Color baseColor = Colors.grey;
  final double value;
  final Size size;

  /// {@macro home_page}
  const StarsRating({
    super.key,
    required this.value, required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < 5; i++)
          Stack(
            children: [
              SizedBox(
                width: size.width,
                height: size.height,
                child: SvgPicture.asset(
                  imageUrl,
                  colorFilter: const ColorFilter.mode(baseColor, BlendMode.srcIn),
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
                      (value - i >= 1) ? 100 : ((value - i) * 100) / 100,
                      (value - i >= 1) ? 100 : ((value - i) * 100) / 100,
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
                    colorFilter: const ColorFilter.mode(baseColor, BlendMode.srcIn),
                  ),
                ),
              ),
            ],
          )
      ],
    );
  }
}
