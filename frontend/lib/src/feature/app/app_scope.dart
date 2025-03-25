import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poly_inside/src/common/enums/review_type.dart';
import 'package:poly_inside/src/common/theme.dart';
import 'package:poly_inside/src/common/widgets/error_page.dart';
import 'package:poly_inside/src/feature/home/bloc/home_bloc.dart';
import 'package:poly_inside/src/feature/professor_profile/widget/professor_profile_page.dart';
import 'package:poly_inside/src/feature/review/widget/review_page.dart';
import 'package:shared/shared.dart';

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
  Widget build(BuildContext context) {
    return _InheritedApp(
      state: this,
      child: MaterialApp(
        initialRoute: '/',
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case '/':
              return MaterialPageRoute(
                  builder: (context) => widget.child);
            case '/professor':
              final professor = (settings.arguments
                  as List)[0] as Professor;
              final bloc = (settings.arguments as List)[1]
                  as HomeBloc;
              return MaterialPageRoute(
                builder: (context) => ProfessorProfilePage(
                  homeBloc: bloc,
                  professorId: professor.id,
                ),
              );
            case '/review':
              final professor =
                  settings.arguments as Professor;
              return MaterialPageRoute(
                builder: (context) => ReviewPage(
                  professor: professor,
                  type: ReviewType.add,
                ),
              );
            default:
              return MaterialPageRoute(
                builder: (context) => ErrorPage(
                  onPressed: () {},
                ),
              );
          }
        },
        darkTheme: ThemeData(
          textTheme: GoogleFonts.montserratTextTheme(),
          colorScheme: MaterialTheme.lightScheme()
              .toColorScheme()
              .copyWith(
                surface: Colors.white,
                onSurface: Colors.black,
                outline: Colors.grey.shade700,
              ),
        ),
        title: 'Poly Inside',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.montserratTextTheme(),
          colorScheme: MaterialTheme.lightScheme()
              .toColorScheme()
              .copyWith(
                surface: Colors.white,
                onSurface: Colors.black,
                outline: Colors.grey.shade700,
              ),
        ),
        // home: widget.child,
      ),
    );
  }
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
  static _InheritedApp? maybeOf(BuildContext context,
          {bool listen = true}) =>
      listen
          ? context.dependOnInheritedWidgetOfExactType<
              _InheritedApp>()
          : context.getInheritedWidgetOfExactType<
              _InheritedApp>();

  static Never _notFoundInheritedWidgetOfExactType() =>
      throw ArgumentError(
        'Out of scope, not found inherited widget '
            'a _InheritedApp of the exact type',
        'out_of_scope',
      );

  /// The state from the closest instance of this class
  /// that encloses the given context.
  /// For example: `App.of(context)`.
  static _InheritedApp of(BuildContext context,
          {bool listen = true}) =>
      maybeOf(context, listen: listen) ??
      _notFoundInheritedWidgetOfExactType();

  @override
  bool updateShouldNotify(
          covariant _InheritedApp oldWidget) =>
      false;
}
