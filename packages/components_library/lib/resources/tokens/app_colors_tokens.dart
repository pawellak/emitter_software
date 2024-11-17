import 'package:flutter/material.dart';

@immutable
abstract class AppColorsTokens extends ThemeExtension<AppColorsTokens> {
  abstract final Color overlayDarkBackgroundColor;

  abstract final Color bottomNavigationSelectedColor;
  abstract final Color bottomNavigationDeselectedColor;
  abstract final Color bottomNavigationBorderColor;

  abstract final Color linearMenuBackgroundColor;

  abstract final Color iconPrimary;
  abstract final Color surfaceContainerPrimary;

  abstract final Color textPrimary;
}
