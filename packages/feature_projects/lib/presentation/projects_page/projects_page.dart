import 'package:core/core_exports.dart';
import 'package:core/presentation/base_page.dart';
import 'package:feature_projects/presentation/projects_page/bloc/projects_cubit.dart';
import 'package:feature_projects/presentation/projects_page/widgets/projects_desktop_widget.dart';
import 'package:feature_projects/presentation/projects_page/widgets/projects_mobile_widget.dart';
import 'package:flutter/material.dart';

const _lottieDurationInMs = 2000;

class ProjectsPage extends BasePage<ProjectsCubit> {
  const ProjectsPage({super.initialParams = _lottieDurationInMs});

  static const path = '/projects';

  static const menuIndex = 1;

  @override
  String get navigationPath => path;

  @override
  Widget buildPage(BuildContext context) => const ClAdapter(
        desktop: ProjectsDesktopWidget(),
        mobile: ProjectsMobileWidget(),
      );
}
