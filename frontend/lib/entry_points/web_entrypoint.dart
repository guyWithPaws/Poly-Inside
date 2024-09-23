import 'package:flutter/material.dart';
import 'package:poly_inside/src/feature/app/app.dart';
import 'package:poly_inside/src/feature/initialization/initialization.dart';
import 'package:poly_inside/src/feature/telegram/user_scope.dart';

void runner() => runApp(
    const InitializationScope(
      child:  UserScope(
        child: App(),
      ),
    ),
  );
