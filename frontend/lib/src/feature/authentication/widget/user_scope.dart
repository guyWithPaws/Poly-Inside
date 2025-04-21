import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poly_inside/src/common/widgets/error_page.dart';
import 'package:poly_inside/src/feature/app/app_scope.dart';
import 'package:poly_inside/src/feature/authentication/widget/intro_page.dart';
import 'package:poly_inside/src/feature/initialization/widget/initialization.dart';
import 'package:shared/shared.dart';

import '../bloc/user_bloc.dart';

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

  static UserModel modelOf(BuildContext context) =>
      _InheritedUserScope.of(context).model;

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
        builder: (context, state) => state.maybeWhen(
          processing: (stage) => const AppScope(
            child: Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ),
          idle: () => const AppScope(child: Scaffold()),
          error: (e) => const AppScope(
            child: ErrorPage(),
          ),
          loaded: (user) {
            final userModel = UserModel(user);
            return _InheritedUserScope(
              userModel: userModel,
              state: this,
              child: widget.child,
            );
          },
          notAuthorized: () => AppScope(
            child: IntroPage(
              bloc: _bloc,
            ),
          ),
          warning: (message) => AppScope(
            child: IntroPage(
              bloc: _bloc,
            ),
          ),
          orElse: () => const SizedBox(),
        ),
        bloc: _bloc,
      );
}

/// Inherited widget for quick access in the element tree.
// class _InheritedUserScope extends InheritedWidget {
//   const _InheritedUserScope({
//     required this.user,
//     required this.state,
//     required super.child,
//   });
//   final User user;
//   final _UserScopeState state;

//   /// The state from the closest instance of this class
//   /// that encloses the given context, if any.
//   /// For example: `UserScope.maybeOf(context)`.
//   static _InheritedUserScope? maybeOf(BuildContext context,
//           {bool listen = true}) =>
//       listen
//           ? context.dependOnInheritedWidgetOfExactType<_InheritedUserScope>()
//           : context.getInheritedWidgetOfExactType<_InheritedUserScope>();

//   static Never _notFoundInheritedWidgetOfExactType() => throw ArgumentError(
//         'Out of scope, not found inherited widget '
//             'a _InheritedUserScope of the exact type',
//         'out_of_scope',
//       );

//   /// The state from the closest instance of this class
//   /// that encloses the given context.
//   /// For example: `UserScope.of(context)`.
//   static _InheritedUserScope of(BuildContext context, {bool listen = true}) =>
//       maybeOf(context, listen: listen) ?? _notFoundInheritedWidgetOfExactType();

//   @override
//   bool updateShouldNotify(covariant _InheritedUserScope oldWidget) =>
//       user != oldWidget.user;
// }

// class _InheritedUserScope extends InheritedWidget {
//   const _InheritedUserScope({
//     required this.userNotifier,
//     required this.state,
//     required super.child,
//   });

//   final ValueNotifier<User> userNotifier;
//   final _UserScopeState state;

//   User get user => userNotifier.value;

//   static _InheritedUserScope? maybeOf(BuildContext context,
//           {bool listen = true}) =>
//       listen
//           ? context.dependOnInheritedWidgetOfExactType<_InheritedUserScope>()
//           : context.getInheritedWidgetOfExactType<_InheritedUserScope>();

//   static _InheritedUserScope of(BuildContext context, {bool listen = true}) =>
//       maybeOf(context, listen: listen) ?? _notFoundInheritedWidgetOfExactType();

//   static Never _notFoundInheritedWidgetOfExactType() => throw ArgumentError(
//         'Out of scope, not found inherited widget '
//             'a _InheritedUserScope of the exact type',
//         'out_of_scope',
//       );

//   @override
//   bool updateShouldNotify(_InheritedUserScope oldWidget) {
//     return userNotifier.value != oldWidget.userNotifier.value;
//   }
// }

class UserModel extends ChangeNotifier {
  UserModel(this._user);

  User _user;

  User get raw => _user;

  String get group => _user.group;
  String get name => _user.name;

  set group(String value) {
    if (_user.group != value) {
      _user.group = value;
      notifyListeners();
    }
  }

  set name(String value) {
    if (_user.name != value) {
      _user.name = value;
      notifyListeners();
    }
  }

  void update(User user) {
    _user = user;
    notifyListeners();
  }
}

class _InheritedUserScope extends InheritedNotifier<UserModel> {
  const _InheritedUserScope({
    required UserModel userModel,
    required this.state,
    required super.child,
  }) : super(notifier: userModel);

  final _UserScopeState state;

  static _InheritedUserScope of(BuildContext context, {bool listen = true}) =>
      listen
          ? context.dependOnInheritedWidgetOfExactType<_InheritedUserScope>()!
          : context.getInheritedWidgetOfExactType<_InheritedUserScope>()!;

  User get user => notifier!._user;

  UserModel get model => notifier!;
}
