import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:meta/meta.dart';

/// {@template stars_rating}
/// StarsRating widget.
/// {@endtemplate}
// ignore: must_be_immutable
class StarsRating extends StatefulWidget {
  static const String imageUrl = 'assets/icons/star.svg';
  static const Color color = Colors.yellow;
  static const Color baseColor = Colors.grey;
  final ValueNotifier<double>? valueNotifier;
  final double spaceBetween;
  final Size size;
  final double? textSize;
  final bool enableDragDetector;
  double value;

  /// {@macro stars_rating}
  StarsRating(
      {super.key,
      required this.size,
      required this.textSize,
      this.value = 0,
      this.enableDragDetector = false,
      required this.spaceBetween,
      this.valueNotifier});

  /// The state from the closest instance of this class
  /// that encloses the given context, if any.
  @internal
  // ignore: library_private_types_in_public_api
  static _StarsRatingState? maybeOf(BuildContext context) =>
      context.findAncestorStateOfType<_StarsRatingState>();

  @override
  State<StarsRating> createState() => _StarsRatingState();
}

/// State for widget StarsRating.
class _StarsRatingState extends State<StarsRating> {
  /* #region Lifecycle */
  @override
  void initState() {
    super.initState();
    // Initial state initialization
  }

  @override
  void didUpdateWidget(covariant StarsRating oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Widget configuration changed
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // The configuration of InheritedWidgets has changed
    // Also called after initState but before build
  }

  @override
  void dispose() {
    widget.valueNotifier?.dispose();
    // Permanent removal of a tree stent
    super.dispose();
  }
  /* #endregion */

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanStart: (details) {
        if (widget.enableDragDetector) {
          setState(
            () {
              widget.value = (details.localPosition.dx / widget.size.width)
                  .clamp(1.0, 5.0);
              widget.valueNotifier!.value = widget.value;
            },
          );
        }
      },
      onPanUpdate: (details) {
        if (widget.enableDragDetector) {
          setState(
            () {
              widget.value = (details.localPosition.dx / widget.size.width)
                  .clamp(1.0, 5.0);
              widget.valueNotifier!.value = widget.value;
            },
          );
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
          Column(
            children: [
              const SizedBox(
                height: 3,
              ),
              Text(
                widget.value.toStringAsFixed(1),
                style: TextStyle(
                  fontSize: widget.textSize,
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
