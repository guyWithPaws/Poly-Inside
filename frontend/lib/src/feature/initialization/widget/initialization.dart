import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poly_inside/src/common/repository/client.dart';
import 'package:poly_inside/src/common/widgets/error_page.dart';
import 'package:poly_inside/src/feature/app/app_scope.dart';
import 'package:poly_inside/src/feature/initialization/bloc/init_bloc.dart';

/// {@template initialization}
/// InitializationScope widget.
/// {@endtemplate}
class InitializationScope extends StatefulWidget {
  /// {@macro initialization}
  const InitializationScope({
    required this.child,
    super.key, // ignore: unused_element
  });

  static ClientRepository repositoryOf(BuildContext context) => _InheritedInitializationScope.of(context).repository;

  /// The widget below this widget in the tree.
  final Widget child;

  @override
  State<InitializationScope> createState() => _InitializationScopeState();
}

/// State for widget InitializationScope.
class _InitializationScopeState extends State<InitializationScope> {
  InitializationBloc? _bloc;
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
    _bloc ??= InitializationBloc(const InitializationState.idle())..add(StartInitialization());
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
  Widget build(BuildContext context) => BlocBuilder<InitializationBloc, InitializationState>(
        bloc: _bloc,
        builder: (context, state) => state.when(
          processing: () => const AppScope(
            child: Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ),
          idle: () => const AppScope(
            child: Scaffold(),
          ),
          error: (e) => AppScope(
            child: ErrorPage(
              onPressed: () {
                _bloc?.add(StartInitialization());
              },
            ),
          ),
          initialized: (repository) => _InheritedInitializationScope(
            state: this,
            repository: repository,
            child: widget.child,
          ),
        ),
      );
}

/// Inherited widget for quick access in the element tree.
class _InheritedInitializationScope extends InheritedWidget {
  const _InheritedInitializationScope({
    required this.state,
    required this.repository,
    required super.child,
  });

  final ClientRepository repository;
  final _InitializationScopeState state;

  /// The state from the closest instance of this class
  /// that encloses the given context, if any.
  /// For example: `InitializationScope.maybeOf(context)`.
  static _InheritedInitializationScope? maybeOf(BuildContext context, {bool listen = true}) => listen
      ? context.dependOnInheritedWidgetOfExactType<_InheritedInitializationScope>()
      : context.getInheritedWidgetOfExactType<_InheritedInitializationScope>();

  static Never _notFoundInheritedWidgetOfExactType() => throw ArgumentError(
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
