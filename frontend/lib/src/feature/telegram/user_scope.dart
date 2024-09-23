import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poly_inside/src/feature/initialization/initialization.dart';
import 'package:shared/shared.dart';

import 'user_bloc.dart';

/// {@template user_scope}
/// UserScope widget.
/// {@endtemplate}
class UserScope extends StatefulWidget {
  /// {@macro user_scope}
  const UserScope({
    required this.child,
    super.key, // ignore: unused_element
  });

  static User userOf(BuildContext context) =>
      _InheritedUserScope.of(context).user;

  /// The widget below this widget in the tree.
  final Widget child;

  @override
  State<UserScope> createState() => _UserScopeState();
}

/// State for widget UserScope.
class _UserScopeState extends State<UserScope> {
  UserBloc? _bloc;
  /* #region Lifecycle */
  @override
  void initState() {
    super.initState();
    // Initial state initialization
  }

  @override
  void didUpdateWidget(covariant UserScope oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Widget configuration changed
  }

  @override
  void didChangeDependencies() {
    _bloc ??= UserBloc(
      repository: InitializationScope.repositoryOf(context),
      state: const UserState.idle(),
    )..add(GetUserEvent());
    super.didChangeDependencies();
    // The configuration of InheritedWidgets has changed
    // Also called after initState but before build
  }

  @override
  void dispose() {
    _bloc?.close();
    // Permanent removal of a tree stent
    super.dispose();
  }

  /* #endregion */

  @override
  Widget build(BuildContext context) => BlocBuilder<UserBloc, UserState>(
        builder: (context, state) => state.when(
            processing: () => const Placeholder(),
            idle: () => const Placeholder(),
            error: (e) => const Placeholder(),
            loaded: (user) => _InheritedUserScope(
                  user: user,
                  state: this,
                  child: widget.child,
                )),
        bloc: _bloc,
      );
}

/// Inherited widget for quick access in the element tree.
class _InheritedUserScope extends InheritedWidget {
  const _InheritedUserScope({
    required this.user,
    required this.state,
    required super.child,
  });
  final User user;
  final _UserScopeState state;

  /// The state from the closest instance of this class
  /// that encloses the given context, if any.
  /// For example: `UserScope.maybeOf(context)`.
  static _InheritedUserScope? maybeOf(BuildContext context,
          {bool listen = true}) =>
      listen
          ? context.dependOnInheritedWidgetOfExactType<_InheritedUserScope>()
          : context.getInheritedWidgetOfExactType<_InheritedUserScope>();

  static Never _notFoundInheritedWidgetOfExactType() => throw ArgumentError(
        'Out of scope, not found inherited widget '
            'a _InheritedUserScope of the exact type',
        'out_of_scope',
      );

  /// The state from the closest instance of this class
  /// that encloses the given context.
  /// For example: `UserScope.of(context)`.
  static _InheritedUserScope of(BuildContext context, {bool listen = true}) =>
      maybeOf(context, listen: listen) ?? _notFoundInheritedWidgetOfExactType();

  @override
  bool updateShouldNotify(covariant _InheritedUserScope oldWidget) => false;
}
