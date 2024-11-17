import 'package:core/core_exports.dart';
import 'package:feature_projects/presentation/projects_page/widgets/projects_mobile_widget.dart';
import 'package:flutter/material.dart';

class ProjectsDesktopWidget extends StatelessWidget {
  const ProjectsDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) => const Row(
        children: [
          Expanded(child: ProjectsMobileWidget()),
          Icon(
            Icons.person,
            size: Dimens.dimen233,
          )
        ],
      );
}
