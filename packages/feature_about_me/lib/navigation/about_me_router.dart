import 'package:core/core_exports.dart';
import 'package:core/navigation/base_router.dart';
import 'package:core/presentation/page_extension.dart';
import 'package:feature_about_me/presentation/about_me_page/about_me_page.dart';

@injectable
class AboutMeRouter implements BaseRouter {
  @override
  final List<RouteBase> routes = [];

  @override
  final StatefulShellBranch bottomBarRoute = StatefulShellBranch(routes: [const AboutMePage().toRoute]);
}
