import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../enums/sorting_type.dart';

/// {@template sort_button}
/// SortButton widget.
/// {@endtemplate}
class SortButton extends StatefulWidget {
  final SortingType type;
  final ValueNotifier<int>? valueNotifier;

  /// {@macro sort_button}
  const SortButton({
    super.key,
    required this.type,
    required this.valueNotifier, // ignore: unused_element
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

  int testValue = 0;

  static const double sortingElementsHeight = 40;
  static const List<String> sortingElements = [
    'А-Я',
    'Я-А',
    'С высоким рейтингом',
    'С низким рейтингом',
    //'Новые',
    //'Старые'
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
                    const Text(
                      'Показать сначала',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFFEEF9EF),
                          borderRadius: BorderRadius.circular(12)),
                      child: ValueListenableBuilder<int>(
                        valueListenable: widget.valueNotifier!,
                        builder: (context, selectedValue, child) {
                          return Column(
                            children: [
                              for (var index = 0;
                                  index < sortingElements.length;
                                  ++index)
                                SizedBox(
                                  height: sortingElementsHeight,
                                  child: Row(
                                    children: [
                                      Radio<int>(
                                        value: index,
                                        groupValue: selectedValue,
                                        onChanged: (newValue) {
                                          widget.valueNotifier!.value =
                                              newValue!;
                                          Navigator.pop(context);
                                        },
                                      ),
                                      Text(sortingElements[index]),
                                    ],
                                  ),
                                ),
                            ],
                          );
                        },
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
              if (widget.type == SortingType.reviews)
                const SizedBox(
                  width: 16,
                ),
              if (widget.type == SortingType.reviews) const Text('Сортировка'),
              if (widget.type == SortingType.reviews)
                const SizedBox(
                  width: 16,
                ),
              if (widget.type == SortingType.reviews)
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
