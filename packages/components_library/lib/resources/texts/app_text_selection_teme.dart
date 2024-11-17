import 'package:components_library/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTextSelectionThemes {
  static TextSelectionThemeData dark = TextSelectionThemeData(
    cursorColor: AppColors.cPrimary[100],
    selectionColor: AppColors.cGray[700],
    selectionHandleColor: AppColors.cPrimary[100],
  );

  static TextSelectionThemeData light = TextSelectionThemeData(
    cursorColor: AppColors.cPrimary[300],
    selectionColor: AppColors.cPrimary[75],
    selectionHandleColor: AppColors.cPrimary[300],
  );
}
