part of 'projects_cubit.dart';

sealed class ProjectsState extends BaseState {
  const ProjectsState();
}

class ProjectsInitial extends ProjectsState {
  const ProjectsInitial();
}

class UpdateView extends ProjectsState {
  const UpdateView({required this.items});

  final List<PersonalProject> items;
}
