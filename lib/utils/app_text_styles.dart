import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';

abstract class AppTextStyles {
  // Headings
  static TextStyle heading1 = GoogleFonts.lato(
    fontSize: 32,
    fontWeight: FontWeight.w800, // ExtraBold
    color: AppColors.black,
  );

  static TextStyle heading2 = GoogleFonts.lato(
    fontSize: 24,
    fontWeight: FontWeight.w700, // Bold
    color: AppColors.black,
  );

  static TextStyle heading3 = GoogleFonts.lato(
    fontSize: 18,
    fontWeight: FontWeight.w700, // Bold
    color: AppColors.black,
  );

  // Body Text
  static TextStyle bodyLarge = GoogleFonts.lato(
    fontSize: 16,
    fontWeight: FontWeight.w400, // Regular
    color: AppColors.darkGray,
  );

  static TextStyle bodyMedium = GoogleFonts.lato(
    fontSize: 14,
    fontWeight: FontWeight.w400, // Regular
    color: AppColors.darkGray,
  );

  static TextStyle bodySmall = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w400, // Regular
    color: AppColors.slateGray,
  );

  // Labels & Buttons
  static TextStyle labelBold = GoogleFonts.lato(
    fontSize: 14,
    fontWeight: FontWeight.w700, // Bold
    color: AppColors.black,
  );

  static TextStyle labelRegular = GoogleFonts.lato(
    fontSize: 14,
    fontWeight: FontWeight.w400, // Regular
    color: AppColors.darkGray,
  );

  static TextStyle buttonText = GoogleFonts.lato(
    fontSize: 14,
    fontWeight: FontWeight.w700, // Bold
    color: AppColors.white,
  );

  // Caption
  static TextStyle caption = GoogleFonts.lato(
    fontSize: 12,
    fontWeight: FontWeight.w400, // Regular
    color: AppColors.slateGray,
  );

  // Special
  static TextStyle accent = GoogleFonts.lemon(
    fontSize: 16,
    fontWeight: FontWeight.w400, // Regular
    color: AppColors.black,
  );
}
