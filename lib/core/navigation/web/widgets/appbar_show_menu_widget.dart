import 'package:core/core_exports.dart';
import 'package:emitter_software/core/navigation/navigator_keys.dart';
import 'package:flutter/material.dart';

class AppbarShowMenuWidget extends StatefulWidget {
  const AppbarShowMenuWidget({super.key});

  @override
  State<AppbarShowMenuWidget> createState() => _AppbarShowMenuWidgetState();
}

class _AppbarShowMenuWidgetState extends State<AppbarShowMenuWidget> {

  @override
  Widget build(BuildContext context) => Row(
    children: [
      ClIcon.icon(
          iconData: Icons.menu,
          onTap: () => NavigatorKeys.drawerScaffoldKey.currentState?.openDrawer(),
        ),
      const Spacer()
    ],
  );
}
