import 'package:flutter/widgets.dart';

/// {@template app}
/// App widget.
/// {@endtemplate}
class App extends StatefulWidget {
  /// {@macro app}
  const App({
    required this.child,
    super.key,  // ignore: unused_element
  });

  /// The widget below this widget in the tree.
  final Widget child;

  @override
  State<App> createState() => _AppState();
}

/// State for widget App.
class _AppState extends State<App> {
  /* #region Lifecycle */
  @override
  void initState() {
    super.initState();
    // Initial state initialization
  }

  @override
  void didUpdateWidget(covariant App oldWidget) {
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
  Widget build(BuildContext context) => _InheritedApp(
        state: this,
        child: widget.child,
      );
}

/// Inherited widget for quick access in the element tree.
class _InheritedApp extends InheritedWidget {
  const _InheritedApp({
    required this.state,
    required super.child,
  });

  final _AppState state;

  /// The state from the closest instance of this class
  /// that encloses the given context, if any.
  /// For example: `App.maybeOf(context)`.
  static _InheritedApp? maybeOf(BuildContext context, {bool listen = true}) => listen
    ? context.dependOnInheritedWidgetOfExactType<_InheritedApp>()
    : context.getInheritedWidgetOfExactType<_InheritedApp>();

  static Never _notFoundInheritedWidgetOfExactType() =>
    throw ArgumentError(
      'Out of scope, not found inherited widget '
          'a _InheritedApp of the exact type',
      'out_of_scope',
    );

  /// The state from the closest instance of this class
  /// that encloses the given context.
  /// For example: `App.of(context)`.
  static _InheritedApp of(BuildContext context, {bool listen = true}) =>
    maybeOf(context, listen: listen) ?? _notFoundInheritedWidgetOfExactType();

  @override
  bool updateShouldNotify(covariant _InheritedApp oldWidget) => false;
}
