import 'package:core/core_exports.dart' show Label, StringTranslateExtension, ThemeExtensions;
import 'package:emitter_software/core/navigation/data/app_menu_data.dart';
import 'package:flutter/material.dart';

class AppBarItemWidget extends StatefulWidget {
  const AppBarItemWidget({
    super.key,
    required AppMenuData item,
    required void Function() onTap,
  })  : _onTap = onTap,
        _item = item;

  final AppMenuData _item;
  final VoidCallback _onTap;

  @override
  State<AppBarItemWidget> createState() => _AppBarItemWidgetState();
}

class _AppBarItemWidgetState extends State<AppBarItemWidget> {
  bool isFocused = false;

  @override
  Widget build(BuildContext context) => MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (event) => setState(() => isFocused = true),
        onExit: (event) => setState(() => isFocused = false),
        child: GestureDetector(
          onTap: widget._onTap,
          child: Center(
            child: Label(
              widget._item.label.tr().toUpperCase(),
              style: context.textTheme.titleSmall,
              fontWeight: FontWeight.bold,
              color: _getIconColor,
              translate: false,
            ),
          ),
        ),
      );

  Color get _getIconColor => isFocused
      ? context.colorTokens.bottomNavigationSelectedColor
      : context.colorTokens.bottomNavigationDeselectedColor;
}
