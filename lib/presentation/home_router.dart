import 'package:core/core_exports.dart' show AppThemes, BuildContextEasyLocalizationExtension;
import 'package:emitter_software/core/navigation/main_router.dart';
import 'package:flutter/material.dart';

class HomeRouter extends StatelessWidget {
  const HomeRouter({super.key});

  @override
  Widget build(BuildContext context) {
    const AppThemes appThemes = AppThemes();
    return MaterialApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: appThemes.light,
      darkTheme: appThemes.dark,
      themeMode: ThemeMode.light,
      routerConfig: const MainRouter().router,
    );
  }
}
