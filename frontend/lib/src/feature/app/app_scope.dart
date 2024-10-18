import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poly_inside/src/common/theme.dart';

/// {@template app}
/// App widget.
/// {@endtemplate}
class AppScope extends StatefulWidget {
  /// {@macro app}
  const AppScope({
    required this.child,
    super.key, // ignore: unused_element
  });

  final Widget child;

  @override
  State<AppScope> createState() => _AppScopeState();
}

/// State for widget App.
class _AppScopeState extends State<AppScope> {
  /* #region Lifecycle */
  @override
  void initState() {
    super.initState();
    // Initial state initialization
  }

  @override
  void didUpdateWidget(covariant AppScope oldWidget) {
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
        child: MaterialApp(
          darkTheme: ThemeData(
            textTheme: GoogleFonts.montserratTextTheme(),
            colorScheme: MaterialTheme.lightScheme().toColorScheme().copyWith(
                  surface: Colors.white,
                  onSurface: Colors.black,
                  outline: Colors.grey.shade700,
                ),
          ),
          title: 'Poly Inside',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            textTheme: GoogleFonts.montserratTextTheme(),
            colorScheme: MaterialTheme.lightScheme().toColorScheme().copyWith(
                  surface: Colors.white,
                  onSurface: Colors.black,
                  outline: Colors.grey.shade700,
                ),
          ),
          home: widget.child,
        ),
      );
}

/// Inherited widget for quick access in the element tree.
class _InheritedApp extends InheritedWidget {
  const _InheritedApp({
    required this.state,
    required super.child,
  });

  final _AppScopeState state;

  /// The state from the closest instance of this class
  /// that encloses the given context, if any.
  /// For example: `App.maybeOf(context)`.
  static _InheritedApp? maybeOf(BuildContext context, {bool listen = true}) =>
      listen
          ? context.dependOnInheritedWidgetOfExactType<_InheritedApp>()
          : context.getInheritedWidgetOfExactType<_InheritedApp>();

  static Never _notFoundInheritedWidgetOfExactType() => throw ArgumentError(
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
