import 'package:core/core_exports.dart';
import 'package:emitter_software/core/navigation/data/app_menu_data.dart';
import 'package:emitter_software/core/navigation/web/widgets/appbar_item_widget.dart';
import 'package:flutter/material.dart';

const _separatorOpacity = 0.3;

class AppBarLinearMenu extends StatelessWidget {
  const AppBarLinearMenu({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: Dimens.dimen34,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.person),
            const SizedBox(width: Dimens.dimen13),
            Expanded(
              child: Center(
                child: ListView.separated(
                  padding: const EdgeInsets.only(right: Dimens.dimen21),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => AppBarItemWidget(
                      item: AppMenuData.values[index], onTap: () => _onMenuItemPressed(context, index)),
                  separatorBuilder: (context, index) => Center(
                    child: Container(
                      margin: const EdgeInsets.only(left: Dimens.dimen13,right: Dimens.dimen13),
                      width: Dimens.dimen1,
                      height: Dimens.dimen34,
                      color: context.colorScheme.primary.withOpacity(_separatorOpacity),
                    ),
                  ),
                  itemCount: AppMenuData.values.length,
                ),
              ),
            ),
          ],
        ),
      );

  void _onMenuItemPressed(BuildContext context, int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
