import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeText {
  static final title = GoogleFonts.varelaRound(
    color: Colors.white,
    fontSize: 30,
    letterSpacing: 1.5,
  );

  static final name = GoogleFonts.signika(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    letterSpacing: 1,
  );

  static final city = TextStyle(
    color: Colors.grey[350],
    letterSpacing: 1.5,
  );

  static const subtitle = TextStyle(
    color: Colors.white,
    letterSpacing: 1.2,
  );

  static final number = GoogleFonts.baloo(
    color: Colors.white,
    fontSize: 18,
  );

  static final quickAction = GoogleFonts.nunito(
    color: Colors.white,
    fontWeight: FontWeight.w700,
    fontSize: 20,
  );

  static final main = GoogleFonts.balooBhaijaan(
    color: Colors.grey[600],
    letterSpacing: 1.2,
    fontSize: 18,
  );
}