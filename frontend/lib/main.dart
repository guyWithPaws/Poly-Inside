import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:poly_inside/firebase_options.dart';
import 'package:poly_inside/src/feature/app/app_scope.dart';
import 'package:poly_inside/src/feature/home/widget/home_page.dart';
import 'package:poly_inside/src/feature/initialization/widget/initialization.dart';
import 'package:poly_inside/src/feature/authentication/widget/user_scope.dart';

void main(List<String> args) => runZonedGuarded(
      () async {
        WidgetsFlutterBinding.ensureInitialized();
        await initializeDateFormatting('ru_RU', null);
        await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        );
        Bloc.observer = MyBLoCObserver();
        Bloc.transformer = sequential();
        runApp(
          const InitializationScope(
            child: UserScope(
              child: AppScope(
                child: HomePage(),
              ),
            ),
          ),
        );
      },
      (e, st) async {
        await FirebaseAnalytics.instance.logEvent(
          name: 'Crash',
          parameters: <String, Object>{
            'Error': e.toString(),
            'Stacktrace': st.toString()
          },
        );
      },
    );

class MyBLoCObserver extends BlocObserver {
  @override
  void onError(
      BlocBase bloc, Object error, StackTrace stackTrace) {
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
