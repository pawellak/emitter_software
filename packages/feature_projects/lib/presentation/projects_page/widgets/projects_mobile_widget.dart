import 'package:core/core_exports.dart';
import 'package:feature_projects/presentation/projects_page/bloc/projects_cubit.dart';
import 'package:feature_projects/presentation/projects_page/widgets/project_widget.dart';
import 'package:flutter/material.dart';

class ProjectsMobileWidget extends StatelessWidget {
  const ProjectsMobileWidget({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<ProjectsCubit, ProjectsState>(
        builder: (context, state) {
          if (state is UpdateView) {
            return ListView.separated(
              itemBuilder: (context, index) => ProjectWidget(personalProject: state.items[index]),
              separatorBuilder: (BuildContext context, int index) => const SizedBox(height: Dimens.dimen13),
              itemCount: state.items.length,
            );
          } else {
            return const Text('loading...');
          }
        },
      );
}
