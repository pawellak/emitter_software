import 'package:core/config/app_locale.dart' show AppLocale;
import 'package:core/core_exports.dart' show AppThemes, EasyLocalization;
import 'package:emitter_software/core/di/get_it.dart';
import 'package:emitter_software/core/internalization/labels_loader.dart';
import 'package:emitter_software/presentation/home_router.dart';
import 'package:flutter/material.dart';

Future<void> mainSetup(String environment) async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies(environment);
  await EasyLocalization.ensureInitialized();
  runApp(const EmitterApp());
}

class EmitterApp extends StatelessWidget {
  const EmitterApp({super.key});

  @override
  Widget build(BuildContext context) => EasyLocalization(
        fallbackLocale: AppLocale.pl,
        startLocale: AppLocale.pl,
        useOnlyLangCode: true,
        supportedLocales: const [AppLocale.pl, AppLocale.en],
        path: LabelsLoader.localLabelsPath,
        assetLoader: const LabelsLoader(),
        child: const HomeRouter(appThemes: AppThemes()),
      );
}
