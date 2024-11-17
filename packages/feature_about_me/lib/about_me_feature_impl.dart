import 'package:core/core_exports.dart' show Singleton;
import 'package:core/features/features_set.dart';
import 'package:feature_about_me/presentation/about_me_page/about_me_page.dart';

@Singleton(as: AboutMeFeature)
class AboutMeFeatureImpl implements AboutMeFeature {
  static const String featurePath = AboutMePage.path;

  @override
  String get path => featurePath;
}
