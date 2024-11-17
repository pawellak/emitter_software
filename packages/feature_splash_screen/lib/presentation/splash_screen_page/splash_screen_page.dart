import 'package:core/core_exports.dart' show AppLottie, BlocListener, ClLottie;
import 'package:core/presentation/base_page.dart';
import 'package:feature_splash_screen/presentation/splash_screen_page/bloc/splash_screen_cubit.dart';
import 'package:flutter/material.dart';

const _lottieDurationInMs = 1000;

class SplashScreenPage extends BasePage<SplashScreenCubit> {
  const SplashScreenPage();

  static const String path = '/splash-screen-page';

  @override
  String get navigationPath => path;

  @override
  Widget buildPage(BuildContext context) => BlocListener<SplashScreenCubit, SplashScreenState>(
        listener: (BuildContext context, SplashScreenState state) {
          switch (state) {
            case GoToDashboard():
              //TODO -> GoToDashboard
              break;
            case GoToOnboarding():
              //TODO -> GoToOnboarding
              break;
            default:
              break;
          }
        },
        child: Center(
            child: ClLottie(
          path: AppLottie.flutter,
          blendMode: BlendMode.dst,
          repeatTimeInMs: _lottieDurationInMs,
        )),
      );
}
