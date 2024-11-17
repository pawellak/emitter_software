import 'package:components_library/resources/colors/app_colors.dart';
import 'package:flutter/material.dart' show Color;
import 'package:components_library/resources/tokens/app_colors_tokens.dart';

class AppColorsTokensLight extends AppColorsTokens {
  @override
  Color get overlayDarkBackgroundColor => AppColors.cPrimary[500]?.withOpacity(0.9) ?? AppColors.cPrimary;

  @override
  AppColorsTokensLight copyWith() => AppColorsTokensLight();

  @override
  AppColorsTokensLight lerp(_, __) => AppColorsTokensLight();

  @override
  Color get textPrimary => AppColors.cPrimary[100]??AppColors.cPrimary;

  @override
  Color get bottomNavigationDeselectedColor => AppColors.cGray[900]??AppColors.cPrimary;

  @override
  Color get bottomNavigationSelectedColor => AppColors.cPrimary[200]??AppColors.cPrimary;

  @override
  Color get iconPrimary => AppColors.cPrimary[500]??AppColors.cPrimary;

  @override
  Color get bottomNavigationBorderColor => AppColors.cPrimary[200]??AppColors.cPrimary;

  @override
  Color get surfaceContainerPrimary => AppColors.cPrimary[50]??AppColors.cPrimary;

  @override
  Color get linearMenuBackgroundColor => AppColors.cWhite;
}
