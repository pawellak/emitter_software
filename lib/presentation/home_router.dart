import 'package:core/core_exports.dart' show AppThemes, BuildContextEasyLocalizationExtension;
import 'package:emitter_software/core/navigation/main_router.dart';
import 'package:flutter/material.dart';

class HomeRouter extends StatelessWidget {
  const HomeRouter({super.key, required this.appThemes});

  final AppThemes appThemes;

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: appThemes.light,
        darkTheme: appThemes.dark,
        themeMode: ThemeMode.light,
        builder: (BuildContext context, Widget? child) => Scaffold(body: child),
        routerConfig: const MainRouter().router,
      );
}
