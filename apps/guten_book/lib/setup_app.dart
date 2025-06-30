import 'dart:async';

import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import 'main_app.dart';
import 'routers/app_router.dart';

class SetupApp {
  static void setup() {
    runZonedGuarded(() {
      AppGetIt.setup(additionalDependenciesCallback: () {
        getIt.registerLazySingleton<AppRouter>(AppRouter.new);
      },);
      runApp(const MainApp());
    }, (error, stackTrace) {});
  }
}
