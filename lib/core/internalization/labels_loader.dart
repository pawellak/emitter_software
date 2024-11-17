import 'dart:convert';
import 'dart:ui' show Locale;
import 'package:core/core_exports.dart';
import 'package:flutter/services.dart';

class LabelsLoader extends AssetLoader {
  const LabelsLoader();

  static const String localLabelsPath = 'assets/translations';

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) async => _getLocalDictionary(locale);

  Future<Map<String, dynamic>?> _getLocalDictionary(Locale locale) async {
    try {
      return await rootBundle
          .loadString('$localLabelsPath/${locale.languageCode}.json')
          .then((String jsonTranslations) => json.decode(jsonTranslations));
    } catch (_) {
      return null;
    }
  }
}
