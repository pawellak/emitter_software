import 'package:core/core_exports.dart' show Singleton;
import 'package:core/features/features_set.dart';
import 'package:feature_projects/presentation/projects_page/projects_page.dart';

@Singleton(as: ProjectsFeature)
class ProjectsFeatureImpl implements ProjectsFeature {
  static const String featurePath = ProjectsPage.path;

  @override
  String get path => featurePath;
}
