//@GeneratedMicroModule;FeatureProjectsPackageModule;package:feature_projects/di/feature_projects_package.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:core/features/features_set.dart' as _i490;
import 'package:feature_projects/navigation/projects_router.dart' as _i717;
import 'package:feature_projects/presentation/projects_page/bloc/projects_cubit.dart'
    as _i942;
import 'package:feature_projects/projects_feature_impl.dart' as _i806;
import 'package:feature_projects/repositories/projects_repository.dart'
    as _i878;
import 'package:feature_projects/repositories/projects_repository_impl.dart'
    as _i838;
import 'package:injectable/injectable.dart' as _i526;

class FeatureProjectsPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i717.ProjectsRouter>(() => _i717.ProjectsRouter());
    gh.singleton<_i490.ProjectsFeature>(() => _i806.ProjectsFeatureImpl());
    gh.factory<_i878.ProjectsRepository>(
        () => const _i838.ProjectsRepositoryImpl());
    gh.factory<_i942.ProjectsCubit>(
        () => _i942.ProjectsCubit(gh<_i878.ProjectsRepository>()));
  }
}
