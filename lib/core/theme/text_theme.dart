import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../values/colors.dart';

final TextTheme appTextTheme = TextTheme(
  headline1: GoogleFonts.roboto(
      color: colorOnPrimary,
      fontSize: 64,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5),
  headline2: GoogleFonts.roboto(
      color: colorOnPrimary,
      fontSize: 48,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5),
  headline3: GoogleFonts.roboto(
      color: colorOnPrimary, fontSize: 32, fontWeight: FontWeight.w400),
  headline4: GoogleFonts.roboto(
      color: colorOnPrimary,
      fontSize: 24,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25),
  headline5: GoogleFonts.roboto(
      color: colorOnPrimary, fontSize: 20, fontWeight: FontWeight.w500),
  headline6: GoogleFonts.roboto(
      color: colorOnPrimary,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5),
  subtitle1: GoogleFonts.roboto(
      color: colorOnPrimary,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15),
  subtitle2: GoogleFonts.roboto(
      color: colorOnPrimary,
      fontSize: 10,
      fontWeight: FontWeight.w200,
      letterSpacing: 0.1),
  bodyText1: GoogleFonts.roboto(
      color: colorOnPrimary,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: .15),
  bodyText2: GoogleFonts.roboto(
      color: colorOnPrimary,
      fontSize: 14,
      fontWeight: FontWeight.w300,
      letterSpacing: 0.25),
  button: GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.00,
    color: colorOnPrimary,
  ),
  caption: GoogleFonts.roboto(
      color: colorOnPrimary,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4),
  overline: GoogleFonts.roboto(
      color: colorOnPrimary,
      fontSize: 10,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5),
);
