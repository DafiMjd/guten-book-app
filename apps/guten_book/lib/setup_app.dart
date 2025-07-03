import 'dart:async';

import 'package:data/data.dart';
import 'package:dependencies/dependencies.dart';
import 'package:domain/get_it/index.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'main_app.dart';
import 'routers/app_router.dart';

class SetupApp {
  static void setup() {
    runZonedGuarded(() async {
      WidgetsFlutterBinding.ensureInitialized();
      AppGetIt.setup(
        additionalDependenciesCallback: () {
          getIt.registerLazySingleton<AppRouter>(AppRouter.new);
          DomainGetIt.setup();
        },
      );
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      getIt<Alice>().setNavigatorKey(getIt<AppRouter>().navigatorKey);
      runApp(const MainApp());
    }, (error, stackTrace) {});
  }
}
