import 'package:core/core_exports.dart';
import 'package:core/presentation/base_page.dart';
import 'package:feature_multimedia/presentation/multimedia_page/bloc/multimedia_cubit.dart';
import 'package:flutter/material.dart';

class MultimediaPage extends BasePage<MultimediaCubit> {
  const MultimediaPage();

  static const path = '/multimedia';

  static const menuIndex = 0;

  @override
  String get navigationPath => path;

  @override
  ClAdapter buildPage(BuildContext context) => ClAdapter(desktop: _buildDesktopWidget(), mobile: _buildMobileWidget());

  Widget _buildDesktopWidget() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [Center(child: Text('Multimedia1'))],
        ),
        Column(
          children: [Center(child: Text('Multimedia2'))],
        )
      ],
    );
  }

  Widget _buildMobileWidget() => const Text('MultimediaSum');
}
