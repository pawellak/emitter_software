//@GeneratedMicroModule;FeatureSplashScreenPackageModule;package:feature_splash_screen/di/feature_splash_screen_package.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:core/features/features_set.dart' as _i490;
import 'package:feature_splash_screen/navigation/splash_screen_router.dart'
    as _i988;
import 'package:feature_splash_screen/presentation/splash_screen_page/bloc/splash_screen_cubit.dart'
    as _i44;
import 'package:feature_splash_screen/splash_screen_feature_impl.dart' as _i498;
import 'package:injectable/injectable.dart' as _i526;

class FeatureSplashScreenPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i988.SplashScreenRouter>(() => _i988.SplashScreenRouter());
    gh.factory<_i44.SplashScreenCubit>(() => _i44.SplashScreenCubit());
    gh.singleton<_i490.SplashScreenFeature>(
        () => _i498.SplashScreenFeatureImpl());
  }
}
