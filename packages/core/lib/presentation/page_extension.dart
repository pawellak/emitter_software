import 'package:core/presentation/base_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension BasePageExtension on BasePage {
  GoRoute get toRoute => GoRoute(
        path: navigationPath,
        builder: (BuildContext context, GoRouterState state) => this,
      );
}
