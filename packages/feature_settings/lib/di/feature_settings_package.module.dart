//@GeneratedMicroModule;FeatureSettingsPackageModule;package:feature_settings/di/feature_settings_package.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:core/features/features_set.dart' as _i490;
import 'package:feature_settings/navigation/settings_router.dart' as _i787;
import 'package:feature_settings/presentation/settings_page/bloc/settings_cubit.dart'
    as _i102;
import 'package:feature_settings/settings_feature_impl.dart' as _i671;
import 'package:injectable/injectable.dart' as _i526;

class FeatureSettingsPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i787.SettingsRouter>(() => _i787.SettingsRouter());
    gh.factory<_i102.SettingsCubit>(() => _i102.SettingsCubit());
    gh.singleton<_i490.SettingsFeature>(() => _i671.SettingsFeatureImpl());
  }
}
