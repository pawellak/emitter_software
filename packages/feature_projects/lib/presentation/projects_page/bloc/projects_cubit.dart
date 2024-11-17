import 'package:core/core_exports.dart';
import 'package:core/presentation/base_cubit.dart';
import 'package:core/presentation/base_state.dart';
import 'package:feature_projects/repositories/data/personal_project.dart';
import 'package:feature_projects/repositories/projects_repository.dart';

part 'projects_state.dart';

@injectable
class ProjectsCubit extends BaseCubit<ProjectsState> {
  ProjectsCubit(this._projectsRepository) : super(const ProjectsInitial());

  final ProjectsRepository _projectsRepository;

  @override
  Future initialMethod() async {
    final projects = await _projectsRepository.getProjectList();
    emit(UpdateView(items: projects));
  }
}
