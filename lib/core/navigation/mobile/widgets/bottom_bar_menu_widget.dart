import 'package:core/core_exports.dart' show ClContainer, StatefulNavigationShell;
import 'package:emitter_software/core/navigation/data/app_menu_data.dart';
import 'package:emitter_software/core/navigation/mobile/widgets/bottom_bar_item_widget.dart';

import 'package:flutter/material.dart';

class BottomBarMenuWidget extends StatelessWidget {
  const BottomBarMenuWidget({required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) => ClContainer(
    borderRadius: BorderRadius.zero,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: AppMenuData.values
                .map(
                  (AppMenuData item) => BottomBarItemWidget(
                    item: item,
                    isSelected: item.index == 0,
                    onTap: () => _onMenuItemPressed(context, item.index),
                  ),
                )
                .toList()),
      );

  void _onMenuItemPressed(BuildContext context, int index) {
    // context.read<HomeCubit>().pageChanged(index);
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
