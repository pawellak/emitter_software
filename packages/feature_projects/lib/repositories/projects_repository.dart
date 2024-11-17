import 'package:feature_projects/repositories/data/personal_project.dart';

abstract class ProjectsRepository {
  Future<List<PersonalProject>> getProjectList();
}
