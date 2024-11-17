import 'package:components_library/resources/colors/app_colors.dart';
import 'package:components_library/resources/texts/app_text_selection_teme.dart';
import 'package:components_library/resources/texts/app_text_themes.dart';
import 'package:components_library/resources/tokens/app_colors_tokens_dark.dart';
import 'package:components_library/resources/tokens/app_colors_tokens_light.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  const AppThemes();

   ThemeData get light => ThemeData(
        bottomSheetTheme: const BottomSheetThemeData(dragHandleColor: AppColors.cBlack),
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.cPrimary),
        scaffoldBackgroundColor: AppColors.cGray[100],
        fontFamily: GoogleFonts.cormorantGaramond().fontFamily,
        // appBarTheme: AppBarTheme(
        //   backgroundColor: AppColors.cGray[100]
        // ),
        // navigationRailTheme: NavigationRailThemeData(
        //   backgroundColor: AppColors.cGray[100],
        //   indicatorColor: Colors.yellow,
        //  Cormorant Garamond
        //
        // ),

        dividerTheme: const DividerThemeData(color: Colors.transparent),
        extensions: [AppColorsTokensLight()],
        textTheme: AppTextThemes.appTextTheme,
        textSelectionTheme: AppTextSelectionThemes.light,
        brightness: Brightness.light,
      );

  ThemeData get dark => light.copyWith(
        navigationBarTheme: const NavigationBarThemeData(backgroundColor: Colors.red),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: AppColors.cGray[900],
            selectedItemColor: Colors.yellow,
            unselectedItemColor: Colors.blue,
            unselectedLabelStyle: TextStyle(color: Colors.yellow, fontFamily: GoogleFonts.lobster().fontFamily),
            selectedLabelStyle: TextStyle(color: Colors.yellow, fontFamily: GoogleFonts.lobster().fontFamily)),
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.cGray[900],
          foregroundColor: Colors.lightGreen,
        ),
        navigationRailTheme: NavigationRailThemeData(
            backgroundColor: AppColors.cGray[900],
            indicatorColor: Colors.yellow,
            unselectedLabelTextStyle: TextStyle(color: Colors.yellow, fontFamily: GoogleFonts.lobster().fontFamily),
            selectedLabelTextStyle: TextStyle(color: Colors.yellow, fontFamily: GoogleFonts.lobster().fontFamily),
            labelType: NavigationRailLabelType.selected),
        bottomSheetTheme: const BottomSheetThemeData(dragHandleColor: AppColors.cWhite),
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.cGray),
        scaffoldBackgroundColor: AppColors.cGray[900],
        textSelectionTheme: AppTextSelectionThemes.dark,
        extensions: [AppColorsTokensDark()],
      );
}
