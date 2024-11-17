import 'package:components_library/resources/tokens/app_colors_tokens.dart';
import 'package:flutter/material.dart';

extension ThemeExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  ColorScheme get colorScheme => theme.colorScheme;

  AppColorsTokens get colorTokens => theme.extension<AppColorsTokens>()!;
}
