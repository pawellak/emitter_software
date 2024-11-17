import 'package:core/core_exports.dart';
import 'package:feature_projects/repositories/data/personal_project.dart';
import 'package:flutter/material.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({super.key, required this.personalProject});

  final PersonalProject personalProject;

  @override
  Widget build(BuildContext context) {
    return ClContainer(
      child: Row(
        children: [
          Column(
            children: [
              Label(personalProject.title),
              Label(personalProject.description),
            ],
          ),
          const Icon(Icons.image),
        ],
      ),
    );
  }
}
