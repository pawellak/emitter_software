import 'package:components_library/resources/colors/app_colors.dart';
import 'package:flutter/material.dart' show Color;
import 'package:components_library/resources/tokens/app_colors_tokens.dart';

class AppColorsTokensDark extends AppColorsTokens {
  @override
  Color get overlayDarkBackgroundColor => AppColors.cBlack.withOpacity(0.8);

  @override
  AppColorsTokensDark copyWith() => AppColorsTokensDark();

  @override
  AppColorsTokensDark lerp(_, __) => AppColorsTokensDark();

  @override
  Color get textPrimary => AppColors.cBlack;

  @override
  Color get bottomNavigationDeselectedColor => AppColors.cBlack;

  @override
  Color get bottomNavigationSelectedColor => AppColors.cBlack;

  @override
  Color get iconPrimary => AppColors.cBlack;

  @override
  Color get bottomNavigationBorderColor => AppColors.cBlack;

  @override
  Color get surfaceContainerPrimary => AppColors.cBlack;

  @override
  Color get linearMenuBackgroundColor => AppColors.cBlack;
}
