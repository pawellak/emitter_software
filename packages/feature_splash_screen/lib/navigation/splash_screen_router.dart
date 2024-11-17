import 'package:core/core_exports.dart';
import 'package:core/navigation/base_router.dart';
import 'package:core/presentation/page_extension.dart' show BasePageExtension;
import 'package:feature_splash_screen/presentation/splash_screen_page/splash_screen_page.dart';

@injectable
class SplashScreenRouter implements BaseRouter {
  @override
  final List<RouteBase> routes = [const SplashScreenPage().toRoute];

  @override
  StatefulShellBranch? get bottomBarRoute => null;
}
