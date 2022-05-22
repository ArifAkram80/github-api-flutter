import 'package:flutter/material.dart';
import '../utils/size_util.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/values/colors.dart';
import 'text_theme.dart';

abstract class AppThemeData {
  static final ThemeData _baseTheme = ThemeData(
    primaryColor: colorPrimary,
    primaryColorLight: colorPrimaryLight,
    primaryColorDark: colorPrimaryDark,
    canvasColor: colorPrimaryLight,
    errorColor: colorError,
    hintColor: colorHint,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: appTextTheme,
    dialogBackgroundColor: colorPrimary,
    appBarTheme: const AppBarTheme(
      color: colorPrimaryDark,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: colorPrimaryDark,
      showUnselectedLabels: true,
      showSelectedLabels: true,
      selectedItemColor: colorSecondary,
      unselectedItemColor: colorSecondary.withOpacity(.5),
      selectedLabelStyle: GoogleFonts.sourceSansPro().copyWith(
        fontSize: 10,
        color: colorSecondary,
      ),
      unselectedLabelStyle: GoogleFonts.sourceSansPro().copyWith(
        fontSize: 10,
        color: colorSecondary.withOpacity(.5),
      ),
    ),
  );

  static ThemeData getThemeData() {
    return _baseTheme.copyWith(
      colorScheme: _baseTheme.colorScheme.copyWith(
        onBackground: Colors.white60,
        onPrimary: Colors.white70,
        secondary: colorSecondary,
        onSecondary: Colors.white60,
      ),
    );
  }
}
