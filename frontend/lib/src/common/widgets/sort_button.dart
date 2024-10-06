import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

enum SortingTypes { professors, reviews }

/// {@template sort_button}
/// SortButton widget.
/// {@endtemplate}
class SortButton extends StatefulWidget {
  final SortingTypes type;

  /// {@macro sort_button}
  const SortButton({
    super.key,
    required this.type, // ignore: unused_element
  });

  /// The state from the closest instance of this class
  /// that encloses the given context, if any.
  @internal
  // ignore: library_private_types_in_public_api
  static _SortButtonState? maybeOf(BuildContext context) =>
      context.findAncestorStateOfType<_SortButtonState>();

  @override
  State<SortButton> createState() => _SortButtonState();
}

/// State for widget SortButton.
class _SortButtonState extends State<SortButton> with TickerProviderStateMixin {
  AnimationController? _controller;
  static const Duration _animationDuration = Duration(milliseconds: 300);

  static const double sortingElementsHeight = 40;
  static const List<String> sortingElements = [
    'А-Я',
    'Я-А',
    'С высоким рейтингом',
    'С низким рейтингом',
    'Новые',
    'Старые'
  ];

  /* #region Lifecycle */
  @override
  void initState() {
    _controller = AnimationController(
      duration: _animationDuration,
      vsync: this,
    );

    super.initState();
    // Initial state initialization
  }

  @override
  void didUpdateWidget(covariant SortButton oldWidget) {
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
    _controller!.dispose();
    // Permanent removal of a tree stent
    super.dispose();
  }
  /* #endregion */

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _controller!.forward(from: 0.0);
        showCupertinoModalBottomSheet(
          context: context,
          builder: (context) => SizedBox(
            height: sortingElementsHeight * (sortingElements.length + 1) + 50,
            child: Material(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Показать сначала'),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFFEEF9EF),
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          for (var index = 0;
                              index < sortingElements.length;
                              ++index)
                            SizedBox(
                              height: sortingElementsHeight,
                              child: Row(
                                children: [
                                  Radio(
                                      value: 1,
                                      groupValue: 0,
                                      onChanged: (_) {}),
                                  Text(sortingElements[index]),
                                ],
                              ),
                            ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ).then((_) {
          _controller!.reverse();
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFEEF9EF),
          borderRadius: BorderRadius.circular(12),
        ),
        height: 40,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 8,
              ),
              const Icon(CupertinoIcons.line_horizontal_3_decrease),
              if (widget.type == SortingTypes.reviews)
                const SizedBox(
                  width: 16,
                ),
              if (widget.type == SortingTypes.reviews) const Text('Сортировка'),
              if (widget.type == SortingTypes.reviews)
                const SizedBox(
                  width: 16,
                ),
              if (widget.type == SortingTypes.reviews)
                AnimatedBuilder(
                  animation: _controller!,
                  builder: (context, child) {
                    return Transform.rotate(
                      angle: _controller!.value * pi,
                      child: const Icon(CupertinoIcons.chevron_down),
                    );
                  },
                ),
              const SizedBox(
                width: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
