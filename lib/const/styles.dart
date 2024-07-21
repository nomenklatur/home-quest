import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Color Presets
class AppColors {
  static const primary = Color(0xff5843BE);
  static const accent = Color(0xffFF9376);
  static const secondary = Color(0xff82868E);
}

// Font Presets
class AppFonts {
  static final dark = GoogleFonts.poppins(fontWeight: FontWeight.w500, color: Colors.black);
  static final light = GoogleFonts.poppins(fontWeight: FontWeight.w500, color: Colors.white);
  static final secondary = GoogleFonts.poppins(fontWeight: FontWeight.w300, color: AppColors.secondary);
  static final primary = GoogleFonts.poppins(fontWeight: FontWeight.w500, color: AppColors.primary);
  static final regular = GoogleFonts.poppins(fontWeight: FontWeight.w400, color: Colors.black);
}
