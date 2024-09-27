import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meta/meta.dart';

/// {@template error_page}
/// ErrorPage widget.
/// {@endtemplate}
class ErrorPage extends StatefulWidget {
  /// {@macro error_page}
  const ErrorPage({
    super.key, // ignore: unused_element
  });

  /// The state from the closest instance of this class
  /// that encloses the given context, if any.
  @internal
  static _ErrorPageState? maybeOf(BuildContext context) =>
      context.findAncestorStateOfType<_ErrorPageState>();

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

/// State for widget ErrorPage.
class _ErrorPageState extends State<ErrorPage> {
  /* #region Lifecycle */
  @override
  void initState() {
    super.initState();
    // Initial state initialization
  }

  @override
  void didUpdateWidget(covariant ErrorPage oldWidget) {
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
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            SvgPicture.asset('assets/icons/sad_face.svg'),
            const SizedBox(
              height: 16,
            ),
            const Text('Упс... Кажется, что-то пошло не так'),
            const Text('Попробуйте обновить страницу'),
            const Spacer(),
            TextButton(
              onPressed: () {},
              child: Container(
                width: 264,
                height: 64,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.green),
                child: const Center(child: Text('Обновить')),
              ),
            ),
            const SizedBox(height: 32)
          ],
        ),
      ),
    );
  }
}
