import 'package:go_router/go_router.dart';

abstract class BaseRouter {
  abstract final List<RouteBase> routes;

  abstract final StatefulShellBranch? bottomBarRoute;
}
