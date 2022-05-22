import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../values/colors.dart';

final TextTheme appTextTheme = TextTheme(
  headline6: GoogleFonts.roboto(
    color: colorOnPrimary,
    fontSize: 17,
    fontWeight: FontWeight.w400,
  ),
  bodyText1: GoogleFonts.roboto(
    color: colorOnPrimary,
    fontSize: 15,
    fontWeight: FontWeight.w400,
  ),
  bodyText2: GoogleFonts.roboto(
    color: colorOnPrimary,
    fontSize: 13,
    fontWeight: FontWeight.w300,
  ),
  caption: GoogleFonts.sourceCodePro(
    color: colorOnPrimary,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  ),
);
