//@GeneratedMicroModule;FeatureMultimediaPackageModule;package:feature_multimedia/di/feature_multimedia_package.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:core/features/features_set.dart' as _i5;
import 'package:feature_multimedia/multimedia_feature_impl.dart' as _i6;
import 'package:feature_multimedia/navigation/multimedia_router.dart' as _i3;
import 'package:feature_multimedia/presentation/multimedia_page/bloc/multimedia_cubit.dart'
    as _i4;
import 'package:injectable/injectable.dart' as _i1;

class FeatureMultimediaPackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    gh.factory<_i3.MultimediaRouter>(() => _i3.MultimediaRouter());
    gh.factory<_i4.MultimediaCubit>(() => _i4.MultimediaCubit());
    gh.singleton<_i5.MultimediaFeature>(() => _i6.MultimediaFeatureImpl());
  }
}
