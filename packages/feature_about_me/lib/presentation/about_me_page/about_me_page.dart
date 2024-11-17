import 'package:core/core_exports.dart';
import 'package:core/presentation/base_page.dart';
import 'package:feature_about_me/presentation/about_me_page/bloc/about_me_cubit.dart';
import 'package:flutter/material.dart';

class AboutMePage extends BasePage<AboutMeCubit> {
  const AboutMePage();

  static const path = '/about-me';

  static const menuIndex = 0;

  @override
  String get navigationPath => path;

  @override
  ClAdapter buildPage(BuildContext context) => ClAdapter(desktop: _buildDesktopWidget(), mobile: _buildMobileWidget());

  Widget _buildDesktopWidget() => const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [Center(child: Text('aboutMe1'))],
          ),
          Column(
            children: [Center(child: Text('aboutMe2'))],
          )
        ],
      );

  Widget _buildMobileWidget() => const Text('aboutMeSum');
}
