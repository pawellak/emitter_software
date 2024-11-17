import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

enum AppMenuData {
  projects('label.menuItemDataList.projects', FluentIcons.code_text_16_regular, FluentIcons.code_text_16_filled),
  contact('label.menuItemDataList.contact', FluentIcons.person_28_regular, FluentIcons.person_28_filled),
  chat('label.menuItemDataList.chat', FluentIcons.chat_12_regular, FluentIcons.chat_12_filled),
  multimedia('label.menuItemDataList.multimedia', FluentIcons.image_16_regular, FluentIcons.image_16_filled),
  settings('label.menuItemDataList.settings', FluentIcons.settings_16_regular, FluentIcons.settings_16_filled);

  const AppMenuData(this.label, this.unselectedIcon, this.selectedIcon);

  final String label;
  final IconData unselectedIcon;
  final IconData selectedIcon;
}
