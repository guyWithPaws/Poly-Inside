import 'package:flutter/material.dart';
import 'package:poly_inside/src/feature/app/app.dart';
import 'package:poly_inside/src/feature/initialization/initialization.dart';
import 'package:poly_inside/src/feature/telegram/user_scope.dart';
import 'package:intl/date_symbol_data_local.dart';

void runner() => initializeDateFormatting('ru_RU', null).then(
      (_) => runApp(
        const InitializationScope(
          child: UserScope(
            child: App(),
          ),
        ),
      ),
    );
