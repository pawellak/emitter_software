import 'package:core/core_exports.dart'
    show GoRouter, GoRouterState, StatefulNavigationShell, StatefulShellRoute, getIt;
import 'package:emitter_software/core/navigation/web/web_home_page.dart';
import 'package:feature_about_me/navigation/about_me_router.dart';
import 'package:feature_chat/navigation/chat_router.dart';
import 'package:feature_multimedia/navigation/multimedia_router.dart';
import 'package:feature_projects/navigation/projects_router.dart';
import 'package:feature_settings/navigation/settings_router.dart';
import 'package:feature_splash_screen/navigation/splash_screen_router.dart';
import 'package:feature_splash_screen/splash_screen_feature_impl.dart';
import 'package:emitter_software/core/navigation/mobile/mobile_home_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MainRouter {
  const MainRouter();

  RouterConfig<Object> get router => GoRouter(
        debugLogDiagnostics: kDebugMode,
        initialLocation: SplashScreenFeatureImpl.featurePath,
        routes: [
          ...getIt<SplashScreenRouter>().routes,
          StatefulShellRoute.indexedStack(
            branches: [
              getIt<ProjectsRouter>().bottomBarRoute,
              getIt<AboutMeRouter>().bottomBarRoute,
              getIt<ChatRouter>().bottomBarRoute,
              getIt<MultimediaRouter>().bottomBarRoute,
              getIt<SettingsRouter>().bottomBarRoute,
            ],
            builder: (BuildContext _, GoRouterState __, StatefulNavigationShell navigationShell) => kIsWeb
                ? WebHomePage(navigationShell: navigationShell)
                : MobileHomePage(navigationShell: navigationShell),
          ),
        ],
      );
}
