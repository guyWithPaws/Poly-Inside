import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poly_inside/src/feature/app/app.dart';
import 'package:poly_inside/src/feature/initialization/initialization.dart';
import 'package:poly_inside/src/feature/telegram/user_scope.dart';
import 'package:intl/date_symbol_data_local.dart';

void runner() {
<<<<<<< HEAD
  Bloc.observer = MyBLoCObserver();
  initializeDateFormatting('ru_RU', null).then(
    (_) => runApp(
=======
  runZonedGuarded(() {
    Bloc.observer = MyBLoCObserver();
    runApp(
>>>>>>> d078ee42c867f65500779a0c73e85b53b37bd433
      const InitializationScope(
        child: UserScope(
          child: App(),
        ),
      ),
    );
  }, (e, st) async {
    await FirebaseAnalytics.instance.logEvent(
      name: 'Crash',
      parameters: <String, Object>{
        'Error': e.toString(),
        'Stacktrace': st.toString()
      },
    );
  });
}

class MyBLoCObserver extends BlocObserver {
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    FirebaseAnalytics.instance.logEvent(
      name: 'Crash',
      parameters: <String, Object>{
        'Error': error.toString(),
        'Stacktrace': stackTrace.toString()
      },
    );
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint(
        '${bloc.runtimeType}: Current state is ${change.currentState.runtimeType}, Next is ${change.nextState.runtimeType}');
    super.onChange(bloc, change);
  }
}
