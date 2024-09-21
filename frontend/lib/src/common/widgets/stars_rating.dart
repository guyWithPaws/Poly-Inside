// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// /// {@template home_page}
// /// HomePage widget.
// /// {@endtemplate}
// class StarsRating extends StatelessWidget {
//   static const String imageUrl = 'assets/icons/star.svg';
//   static const Color color = Colors.yellow;
//   static const Color baseColor = Colors.grey;
//   double value;
//   final Size size;
//   final bool enableDragDetector;

//   /// {@macro home_page}
//   StarsRating(
//       {super.key,
//       required this.value,
//       required this.size,
//       this.enableDragDetector = false});
// // add this variable to store the current value
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onPanStart: (details) =>
//           enableDragDetector ? debugPrint('hhhhhhhhhui') : null,
//       onPanUpdate: (details) {
//         if (enableDragDetector) {
//           // calculate the new value based on the finger position
//           value = 0.1;
//           debugPrint('pizda $value ${MediaQuery.of(context).size.width}');
//         }
//       },
//       onPanEnd: (details) => enableDragDetector ? debugPrint('h') : null,
//       child: Row(
//         children: [
//           for (int i = 0; i < 5; i++)
//             Stack(
//               children: [
//                 SizedBox(
//                   width: size.width,
//                   height: size.height,
//                   child: SvgPicture.asset(
//                     imageUrl,
//                     colorFilter:
//                         const ColorFilter.mode(baseColor, BlendMode.srcIn),
//                   ),
//                 ),
//                 ShaderMask(
//                   shaderCallback: (bounds) {
//                     final fillGradient = LinearGradient(
//                       begin: Alignment.bottomLeft,
//                       end: Alignment.bottomRight,
//                       colors: [
//                         color,
//                         color.withOpacity(0),
//                       ],
//                       stops: [
//                         (value - i >= 0) ? (value - i) : 0,
//                         (value - i >= 0) ? (value - i) : 0,
//                       ],
//                     );
//                     return fillGradient.createShader(bounds);
//                   },
//                   blendMode: BlendMode.srcATop,
//                   child: SizedBox(
//                     width: size.width,
//                     height: size.height,
//                     child: SvgPicture.asset(
//                       imageUrl,
//                       colorFilter:
//                           const ColorFilter.mode(baseColor, BlendMode.srcIn),
//                     ),
//                   ),
//                 ),
//               ],
//             )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StarsRating extends StatefulWidget {
  static const String imageUrl = 'assets/icons/star.svg';
  static const Color color = Colors.yellow;
  static const Color baseColor = Colors.grey;
  final double spaceBetween;
  final Size size;
  final bool enableDragDetector;
  double value;

  StarsRating(
      {super.key,
      required this.size,
      this.value = 0,
      this.enableDragDetector = false,
      required this.spaceBetween});

  @override
  // ignore: library_private_types_in_public_api
  _StarsRatingState createState() => _StarsRatingState();
}

class _StarsRatingState extends State<StarsRating> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanStart: (details) {
        if (widget.enableDragDetector) {
          setState(() {
            widget.value = (details.localPosition.dx / widget.size.width).clamp(1.0, 5.0);
          });
        }
      },
      onPanUpdate: (details) {
        if (widget.enableDragDetector) {
          setState(() {
            widget.value = (details.localPosition.dx / widget.size.width).clamp(1.0, 5.0);
          });
        }
      },
      child: Row(
        children: [
          Row(
            children: [
              for (int i = 0; i < 5; i++)
                Stack(
                  children: [
                    SizedBox(
                      width: widget.size.width,
                      height: widget.size.height,
                      child: SvgPicture.asset(
                        StarsRating.imageUrl,
                        colorFilter: const ColorFilter.mode(
                            StarsRating.baseColor, BlendMode.srcIn),
                      ),
                    ),
                    ShaderMask(
                      shaderCallback: (bounds) {
                        final fillGradient = LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            StarsRating.color,
                            StarsRating.color.withOpacity(0),
                          ],
                          stops: [
                            (widget.value - i >= 0) ? (widget.value - i) : 0,
                            (widget.value - i >= 0) ? (widget.value - i) : 0,
                          ],
                        );
                        return fillGradient.createShader(bounds);
                      },
                      blendMode: BlendMode.srcATop,
                      child: SizedBox(
                        width: widget.size.width,
                        height: widget.size.height,
                        child: SvgPicture.asset(
                          StarsRating.imageUrl,
                          colorFilter: const ColorFilter.mode(
                              StarsRating.baseColor, BlendMode.srcIn),
                        ),
                      ),
                    ),
                  ],
                )
            ],
          ),
          SizedBox(width: widget.spaceBetween),
          Text(widget.value.toStringAsFixed(1))
        ],
      ),
    );
  }
}
