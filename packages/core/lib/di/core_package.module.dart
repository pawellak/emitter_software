//@GeneratedMicroModule;CorePackageModule;package:core/di/core_package.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:core/controllers/key_value_storage_manager.dart' as _i4;
import 'package:core/controllers/key_value_storage_manager_impl.dart' as _i5;
import 'package:core/core_exports.dart' as _i3;
import 'package:core/di/core_package.dart' as _i6;
import 'package:injectable/injectable.dart' as _i1;

class CorePackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) async {
    final corePackage = _$CorePackage();
    gh.factory<_i3.Logger>(() => corePackage.logger);
    await gh.factoryAsync<_i3.SharedPreferences>(
      () => corePackage.prefs(),
      preResolve: true,
    );
    gh.factory<_i4.KeyValueStorageManager>(
        () => _i5.KeyValueStorageManagerImpl(gh<_i3.SharedPreferences>()));
  }
}

class _$CorePackage extends _i6.CorePackage {}
