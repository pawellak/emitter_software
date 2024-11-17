import 'package:core/core_exports.dart' show Singleton;
import 'package:core/features/features_set.dart';
import 'package:feature_splash_screen/presentation/splash_screen_page/splash_screen_page.dart';

@Singleton(as: SplashScreenFeature)
class SplashScreenFeatureImpl implements SplashScreenFeature {
  static const String featurePath = SplashScreenPage.path;

  @override
  String get path => featurePath;
}
