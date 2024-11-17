import 'package:core/core_exports.dart';
import 'package:core/navigation/base_router.dart';
import 'package:core/presentation/page_extension.dart';
import 'package:feature_multimedia/presentation/multimedia_page/multimedia_page.dart';

@injectable
class MultimediaRouter implements BaseRouter {
  @override
  final List<RouteBase> routes = [];

  @override
  final StatefulShellBranch bottomBarRoute = StatefulShellBranch(routes: [const MultimediaPage().toRoute]);
}
