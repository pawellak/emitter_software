import 'package:core/core_exports.dart' show GoRouter, getIt;
import 'package:feature_splash_screen/navigation/splash_screen_router.dart';
import 'package:feature_splash_screen/splash_screen_feature_impl.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MainRouter {
  const MainRouter();

  RouterConfig<Object> get router => GoRouter(
        debugLogDiagnostics: kDebugMode,
        initialLocation: SplashScreenFeatureImpl.featurePath,
        routes: [
          ...getIt<SplashScreenRouter>().routes,
        ],
      );
}
