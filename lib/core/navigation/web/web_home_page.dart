import 'package:core/core_exports.dart' show StatefulNavigationShell;
import 'package:emitter_software/core/navigation/web/widgets/top_bar_menu_widget.dart';

import 'package:flutter/material.dart';

class WebHomePage extends StatelessWidget {
  const WebHomePage({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          TopBarMenuWidget(navigationShell: navigationShell),
          Expanded(child: navigationShell),
        ],
      );
}
