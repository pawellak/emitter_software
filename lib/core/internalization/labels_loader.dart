import 'dart:ui' show Locale;
import 'package:core/core_exports.dart' show AssetLoader;

class LabelsLoader extends AssetLoader {
  const LabelsLoader();

  static const String localLabelsPath = 'assets/translations';

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) async {
    try {
      return null;
    } catch (e) {
      return null;
    }
  }
}
