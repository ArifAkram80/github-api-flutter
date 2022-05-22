import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../values/colors.dart';

final TextTheme appTextTheme = TextTheme(
  headline6: GoogleFonts.roboto(
      color: colorOnPrimary,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5),
  bodyText1: GoogleFonts.roboto(
      color: colorOnPrimary,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: .15),
  bodyText2: GoogleFonts.roboto(
      color: colorOnPrimary,
      fontSize: 14,
      fontWeight: FontWeight.w300,
     ),
  caption: GoogleFonts.roboto(
      color: colorOnPrimary,
      fontSize: 12,
      fontWeight: FontWeight.w400,
     ),
);
