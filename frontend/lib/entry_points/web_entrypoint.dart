import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poly_inside/src/feature/app/app.dart';
import 'package:poly_inside/src/feature/initialization/initialization.dart';
import 'package:poly_inside/src/feature/telegram/user_scope.dart';

void runner() {
  Bloc.observer = MyBLoCObserver();
  runApp(
    const InitializationScope(
      child: UserScope(
        child: App(),
      ),
    ),
  );
}

class MyBLoCObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint(
        '${bloc.runtimeType}: Current state is ${change.currentState.runtimeType}, Next is ${change.nextState.runtimeType}');
    super.onChange(bloc, change);
  }
}
