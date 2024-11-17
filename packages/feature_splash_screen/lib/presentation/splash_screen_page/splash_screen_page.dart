import 'package:core/presentation/base_page.dart';
import 'package:feature_splash_screen/presentation/splash_screen_page/bloc/splash_screen_cubit.dart';
import 'package:flutter/material.dart';

class SplashScreenPage extends BasePage<SplashScreenCubit> {
  const SplashScreenPage();

  static const path = '/splash-screen-page';

  @override
  String get navigationPath => path;

  @override
  Widget buildPage(BuildContext context) => const Center(
        child: Text(
          'Splash screen',
          style: TextStyle(color: Colors.red),
        ),
      );
}
