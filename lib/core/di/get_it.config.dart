// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core/di/core_package.module.dart' as _i276;
import 'package:feature_about_me/di/feature_about_me_package.module.dart'
    as _i102;
import 'package:feature_chat/di/feature_chat_package.module.dart' as _i739;
import 'package:feature_multimedia/di/feature_multimedia_package.module.dart'
    as _i655;
import 'package:feature_projects/di/feature_projects_package.module.dart'
    as _i126;
import 'package:feature_settings/di/feature_settings_package.module.dart'
    as _i504;
import 'package:feature_splash_screen/di/feature_splash_screen_package.module.dart'
    as _i16;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    await _i504.FeatureSettingsPackageModule().init(gh);
    await _i276.CorePackageModule().init(gh);
    await _i16.FeatureSplashScreenPackageModule().init(gh);
    await _i655.FeatureMultimediaPackageModule().init(gh);
    await _i102.FeatureAboutMePackageModule().init(gh);
    await _i126.FeatureProjectsPackageModule().init(gh);
    await _i739.FeatureChatPackageModule().init(gh);
    return this;
  }
}
