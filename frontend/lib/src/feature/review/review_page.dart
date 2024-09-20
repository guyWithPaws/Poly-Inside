import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meta/meta.dart';

/// {@template review_page}
/// ReviewPage widget.
/// {@endtemplate}
class ReviewPage extends StatefulWidget {
  /// {@macro review_page}
  const ReviewPage({
    super.key, // ignore: unused_element
  });

  /// The state from the closest instance of this class
  /// that encloses the given context, if any.
  @internal
  static _ReviewPageState? maybeOf(BuildContext context) =>
      context.findAncestorStateOfType<_ReviewPageState>();

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

/// State for widget ReviewPage.
class _ReviewPageState extends State<ReviewPage> {
  /* #region Lifecycle */
  @override
  void initState() {
    super.initState();
    // Initial state initialization
  }

  @override
  void didUpdateWidget(covariant ReviewPage oldWidget) {
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
    // Permanent removal of a tree stent
    super.dispose();
  }
  /* #endregion */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            width: 30,
            height: 30,
            margin: const EdgeInsets.all(12),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 185, 185, 185),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset('assets/icons/cross.svg'),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Colors.green,
        label: const Center(child: Text('Опубликовать')),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          const Text('Оцените преподавателя'),
          const SizedBox(
            height: 32,
          ),
          const Text('Рейгинт по категориям'),
          const SizedBox(
            height: 16,
          ),
          Container(
            width: 360,
            height: 284,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(12)),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(''),
          const SizedBox(
            height: 16,
          ),
          const TextField(
            keyboardType: TextInputType.multiline,
            maxLines: null,
          )
        ]),
      )),
    );
  }
}
