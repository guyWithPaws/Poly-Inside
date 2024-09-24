import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poly_inside/src/feature/app/app.dart';
import 'package:poly_inside/src/feature/initialization/initialization.dart';
import 'package:poly_inside/src/feature/telegram/user_scope.dart';
import 'package:intl/date_symbol_data_local.dart';

void runner() {
  Bloc.observer = MyBLoCObserver();
  initializeDateFormatting('ru_RU', null).then(
    (_) => runApp(
      const InitializationScope(
        child: UserScope(
          child: App(),
        ),
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
