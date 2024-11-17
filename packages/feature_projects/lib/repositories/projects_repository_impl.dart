import 'package:core/core_exports.dart';
import 'package:feature_projects/repositories/data/personal_project.dart';
import 'package:feature_projects/repositories/projects_repository.dart';

@Injectable(as: ProjectsRepository)
class ProjectsRepositoryImpl implements ProjectsRepository {
  const ProjectsRepositoryImpl();

  @override
  Future<List<PersonalProject>> getProjectList() async {
    return [
      PersonalProject(
          title: 'Aplikacja dla firmy energetycznej',
          description: 'Opłacanie rachunków oraz zarządzanie kontem',
          dateStart: DateTime.now(),
          dateEnd: DateTime.now(),
          imageUrl: ''),
    ];
  }
}
