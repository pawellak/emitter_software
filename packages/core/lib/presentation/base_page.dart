import 'package:core/core_exports.dart' show BlocProvider, getIt;
import 'package:core/presentation/base_cubit.dart';
import 'package:core/presentation/base_page_basic_config.dart';
import 'package:flutter/material.dart';

abstract class BasePage<T extends BaseCubit> extends StatelessWidget implements BasePageBasicConfig {
  const BasePage({super.key, this.canPop = true, this.initialParams});

  final bool canPop;
  final dynamic initialParams;

  void onBackPressed(BuildContext context, {required bool didPop}) => () {};

  @override
  Widget build(_) => BlocProvider(
        create: (_) => getIt<T>()
          ..initialMethod()
          ..initialParams(initialParams),
        child: Builder(
          builder: (providerContext) => PopScope(
            canPop: canPop,
            onPopInvokedWithResult: (bool didPop, Object? _) {
              onBackPressed(providerContext, didPop: didPop);
            },
            child: SafeArea(
              child: Scaffold(body: buildPage(providerContext)),
            ),
          ),
        ),
      );
}
