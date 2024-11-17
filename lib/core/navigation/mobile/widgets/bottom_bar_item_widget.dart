import 'package:core/core_exports.dart' show ClIcon, Label, ThemeExtensions;
import 'package:emitter_software/core/navigation/data/app_menu_data.dart';
import 'package:flutter/material.dart';

class BottomBarItemWidget extends StatelessWidget {
  const BottomBarItemWidget({
    super.key,
    required AppMenuData item,
    required void Function() onTap,
    required bool isSelected,
  })  : _isSelected = isSelected,
        _onTap = onTap,
        _item = item;

  final AppMenuData _item;
  final VoidCallback _onTap;
  final bool _isSelected;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: _onTap,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          ClIcon.icon(iconData: _currentIcon, color: _getIconColor(context)),
          Label(
            _item.label,
            style: context.textTheme.bodySmall,
            fontWeight: FontWeight.bold,
            color: _getIconColor(context),
          )
        ]),
      );

  Color _getIconColor(BuildContext context) => _isSelected
      ? context.colorTokens.bottomNavigationSelectedColor
      : context.colorTokens.bottomNavigationDeselectedColor;

  IconData get _currentIcon => _isSelected ? _item.selectedIcon : _item.unselectedIcon;
}
