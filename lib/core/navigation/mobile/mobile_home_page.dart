import 'package:core/core_exports.dart' show StatefulNavigationShell;
import 'package:emitter_software/core/navigation/mobile/widgets/bottom_bar_menu_widget.dart';

import 'package:flutter/material.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Expanded(child: navigationShell),
          BottomBarMenuWidget(navigationShell: navigationShell),
        ],
      );
}
