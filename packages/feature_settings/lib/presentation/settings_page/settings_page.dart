import 'package:core/core_exports.dart';
import 'package:core/presentation/base_page.dart';
import 'package:feature_settings/presentation/settings_page/bloc/settings_cubit.dart';
import 'package:flutter/material.dart';

class SettingsPage extends BasePage<SettingsCubit> {
  const SettingsPage();

  static const path = '/settings';

  @override
  String get navigationPath => path;

  @override
  ClAdapter buildPage(BuildContext context) => ClAdapter(desktop: _buildDesktopWidget(), mobile: _buildMobileWidget());

  Widget _buildDesktopWidget() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [Center(child: Text('Settings1'))],
        ),
        Column(
          children: [Center(child: Text('Settings2'))],
        )
      ],
    );
  }

  Widget _buildMobileWidget() => const Text('SettingsSum');
}
