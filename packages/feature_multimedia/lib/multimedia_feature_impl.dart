import 'package:core/core_exports.dart' show Singleton;
import 'package:core/features/features_set.dart';
import 'package:feature_multimedia/presentation/multimedia_page/multimedia_page.dart';

@Singleton(as: MultimediaFeature)
class MultimediaFeatureImpl implements MultimediaFeature {
  static const String featurePath = MultimediaPage.path;

  @override
  String get path => featurePath;
}
