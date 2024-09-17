import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

/// {@template home_page}
/// HomePage widget.
/// {@endtemplate}
class StarsRating extends StatelessWidget {
  static const String imageUrl = 'assets/icons/star.svg';
  final Color color;
  final Color baseColor;
  final double value;

  /// {@macro home_page}
  const StarsRating({
    super.key,
    required this.color,
    required this.value,
    required this.baseColor, // ignore: unused_element
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < 5; i++)
          Stack(
            children: [
              SvgPicture.asset(
                imageUrl,
                colorFilter: ColorFilter.mode(baseColor, BlendMode.srcIn),
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
                child: SvgPicture.asset(
                  imageUrl,
                  colorFilter: ColorFilter.mode(baseColor, BlendMode.srcIn),
                ),
              ),
            ],
          )
      ],
    );
  }
}
