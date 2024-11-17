import 'package:flutter/material.dart';

abstract class KeyValueStorageManager {
  Future<bool> setThemeMode(ThemeMode mode);

  ThemeMode get themeMode;
}
