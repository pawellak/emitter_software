import 'package:core/core_exports.dart';
import 'package:core/navigation/base_router.dart';
import 'package:core/presentation/page_extension.dart';
import 'package:feature_chat/presentation/chat_page/chat_page.dart';

@injectable
class ChatRouter implements BaseRouter {

  @override
  final List<RouteBase> routes = [];

  @override
  final StatefulShellBranch bottomBarRoute = StatefulShellBranch(
    routes: [
      const ChatPage().toRoute,
    ],
  );
}
