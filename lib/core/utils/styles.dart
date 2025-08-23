import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles {
  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );

  static final textStyle20 = GoogleFonts.playfairDisplay(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );

  static final textStyle30 = GoogleFonts.playfairDisplay(
    fontSize: 30,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );
}
