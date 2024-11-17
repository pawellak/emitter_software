import 'package:core/core_exports.dart';
import 'package:core/navigation/base_router.dart';
import 'package:core/presentation/page_extension.dart';
import 'package:feature_settings/presentation/settings_page/settings_page.dart';

@injectable
class SettingsRouter implements BaseRouter {
  @override
  final List<RouteBase> routes = [];

  @override
  final StatefulShellBranch bottomBarRoute = StatefulShellBranch(
    routes: [const SettingsPage().toRoute],
  );
}
