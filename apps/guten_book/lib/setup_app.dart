import 'dart:async';

import 'package:data/data.dart';
import 'package:dependencies/dependencies.dart';
import 'package:domain/get_it/index.dart';
import 'package:flutter/material.dart';

import 'main_app.dart';
import 'routers/app_router.dart';

class SetupApp {
  static void setup() {
    runZonedGuarded(() {
      WidgetsFlutterBinding.ensureInitialized();
      AppGetIt.setup(
        additionalDependenciesCallback: () {
          getIt.registerLazySingleton<AppRouter>(AppRouter.new);
          DomainGetIt.setup();
        },
      );
      getIt<Alice>().setNavigatorKey(getIt<AppRouter>().navigatorKey);
      runApp(const MainApp());
    }, (error, stackTrace) {});
  }
}
