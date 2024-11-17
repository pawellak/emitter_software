//@GeneratedMicroModule;FeatureAboutMePackageModule;package:feature_about_me/di/feature_about_me_package.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:core/features/features_set.dart' as _i5;
import 'package:feature_about_me/about_me_feature_impl.dart' as _i6;
import 'package:feature_about_me/navigation/about_me_router.dart' as _i3;
import 'package:feature_about_me/presentation/about_me_page/bloc/about_me_cubit.dart'
    as _i4;
import 'package:injectable/injectable.dart' as _i1;

class FeatureAboutMePackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    gh.factory<_i3.AboutMeRouter>(() => _i3.AboutMeRouter());
    gh.factory<_i4.AboutMeCubit>(() => _i4.AboutMeCubit());
    gh.singleton<_i5.AboutMeFeature>(() => _i6.AboutMeFeatureImpl());
  }
}
