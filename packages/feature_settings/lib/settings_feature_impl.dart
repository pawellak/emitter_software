import 'package:core/core_exports.dart' show Singleton;
import 'package:core/features/features_set.dart';
import 'package:feature_settings/presentation/settings_page/settings_page.dart';

@Singleton(as: SettingsFeature)
class SettingsFeatureImpl implements SettingsFeature {

  static const String featurePath = SettingsPage.path;

  @override
  String get path => featurePath;
}
