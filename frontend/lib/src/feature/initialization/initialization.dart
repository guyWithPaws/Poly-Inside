import 'package:flutter/widgets.dart';

/// {@template initialization}
/// InitializationScope widget.
/// {@endtemplate}
class InitializationScope extends StatefulWidget {
  /// {@macro initialization}
  const InitializationScope({
    required this.child,
    super.key,  // ignore: unused_element
  });

  /// The widget below this widget in the tree.
  final Widget child;

  @override
  State<InitializationScope> createState() => _InitializationScopeState();
}

/// State for widget InitializationScope.
class _InitializationScopeState extends State<InitializationScope> {
  /* #region Lifecycle */
  @override
  void initState() {
    super.initState();
    // Initial state initialization
  }

  @override
  void didUpdateWidget(covariant InitializationScope oldWidget) {
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
  Widget build(BuildContext context) => _InheritedInitializationScope(
        state: this,
        child: widget.child,
      );
}

/// Inherited widget for quick access in the element tree.
class _InheritedInitializationScope extends InheritedWidget {
  const _InheritedInitializationScope({
    required this.state,
    required super.child,
  });

  final _InitializationScopeState state;

  /// The state from the closest instance of this class
  /// that encloses the given context, if any.
  /// For example: `InitializationScope.maybeOf(context)`.
  static _InheritedInitializationScope? maybeOf(BuildContext context, {bool listen = true}) => listen
    ? context.dependOnInheritedWidgetOfExactType<_InheritedInitializationScope>()
    : context.getInheritedWidgetOfExactType<_InheritedInitializationScope>();

  static Never _notFoundInheritedWidgetOfExactType() =>
    throw ArgumentError(
      'Out of scope, not found inherited widget '
          'a _InheritedInitializationScope of the exact type',
      'out_of_scope',
    );

  /// The state from the closest instance of this class
  /// that encloses the given context.
  /// For example: `InitializationScope.of(context)`.
  static _InheritedInitializationScope of(BuildContext context, {bool listen = true}) =>
    maybeOf(context, listen: listen) ?? _notFoundInheritedWidgetOfExactType();

  @override
  bool updateShouldNotify(covariant _InheritedInitializationScope oldWidget) => false;
}
