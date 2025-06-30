import 'package:component/component.dart';
import 'package:data/data.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

import 'dev_tool_fab.dart';
import 'routers/app_router.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = getIt<AppRouter>();

    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: (context, _) {
        return MaterialApp.router(
          title: F.title,
          theme: GtAppTheme.dark(),
          routerConfig: appRouter.config(),
          builder: (context, child) {
            return _flavorBanner(
              child: child ?? const SizedBox(),
              show: !F.appFlavor.isProd,
            );
          },
        );
      },
    );
  }

  Widget _flavorBanner({required Widget child, bool show = true}) => show
      ? Banner(
          location: BannerLocation.topStart,
          message: F.name,
          color: Colors.green.withAlpha(150),
          textStyle: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 12.0,
            letterSpacing: 1.0,
          ),
          textDirection: TextDirection.ltr,
          child: DevToolFab(mainScreenWidget: child),
        )
      : Container(child: child);
}
