import 'package:collection/collection.dart';
import 'package:core/controllers/key_value_storage_manager.dart';
import 'package:core/core_exports.dart' show Injectable;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _theme = 'theme';

@Injectable(as: KeyValueStorageManager)
class KeyValueStorageManagerImpl implements KeyValueStorageManager {
  KeyValueStorageManagerImpl(this._sharedPreferences);

  final SharedPreferences _sharedPreferences;

  @override
  ThemeMode get themeMode =>
      ThemeMode.values.firstWhereOrNull((element) => element.name == _sharedPreferences.getString(_theme)) ??
      ThemeMode.system;

  @override
  Future<bool> setThemeMode(ThemeMode mode) => _sharedPreferences.setString(_theme, mode.name);
}
