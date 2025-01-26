import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

/// {@template skeletonizer}
/// Skeletonizer widget.
/// {@endtemplate}
class Skeletonizer extends StatefulWidget {
  /// {@macro skeletonizer}
  const Skeletonizer({
    super.key, // ignore: unused_element
  });

  /// The state from the closest instance of this class
  /// that encloses the given context, if any.
  @internal
  // ignore: library_private_types_in_public_api
  static _SkeletonizerState? maybeOf(BuildContext context) => context.findAncestorStateOfType<_SkeletonizerState>();

  @override
  State<Skeletonizer> createState() => _SkeletonizerState();
}

/// State for widget Skeletonizer.
class _SkeletonizerState extends State<Skeletonizer> {
  /* #region Lifecycle */
  @override
  void initState() {
    super.initState();
    // Initial state initialization
  }

  @override
  void didUpdateWidget(covariant Skeletonizer oldWidget) {
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
  Widget build(BuildContext context) => const Placeholder();
}
