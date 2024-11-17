import 'package:core/core_exports.dart';
import 'package:core/navigation/base_router.dart';
import 'package:core/presentation/page_extension.dart';
import 'package:feature_projects/presentation/projects_page/projects_page.dart';

@injectable
class ProjectsRouter implements BaseRouter {
  @override
  final List<RouteBase> routes = [];

  @override
  final StatefulShellBranch bottomBarRoute = StatefulShellBranch(routes: [const ProjectsPage().toRoute]);
}
