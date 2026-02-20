import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';

abstract class AppTextStyles {
  static TextStyle heading1(BuildContext context) {
    return GoogleFonts.lato(
      fontSize: getResponsiveFontSize(context, fontSize: 32),
      fontWeight: FontWeight.w800,
      color: AppColors.black,
    );
  }

  // Headings

  // static TextStyle heading2 = GoogleFonts.lato(
  //   fontSize: 24,
  //   fontWeight: FontWeight.w700, // Bold
  //   color: AppColors.black,
  // );

  // static TextStyle heading3 = GoogleFonts.lato(
  //   fontSize: 18,
  //   fontWeight: FontWeight.w700, // Bold
  //   color: AppColors.black,
  // );

  // // Body Text
  // static TextStyle bodyLarge = GoogleFonts.lato(
  //   fontSize: 20,
  //   fontWeight: FontWeight.w900, // bold
  //   color: AppColors.black,
  // );

  // static TextStyle bodyMedium = GoogleFonts.lato(
  //   fontSize: 16,
  //   fontWeight: FontWeight.w400, // Regular
  //   color: AppColors.darkGray,
  // );

  // static TextStyle bodySmall = GoogleFonts.inter(
  //   fontSize: 12,
  //   fontWeight: FontWeight.w400, // Regular
  //   color: AppColors.slateGray,
  // );

  // // Labels & Buttons
  // static TextStyle labelBold = GoogleFonts.lato(
  //   fontSize: 14,
  //   fontWeight: FontWeight.w700, // Bold
  //   color: AppColors.black,
  // );

  // static TextStyle labelRegular = GoogleFonts.lato(
  //   fontSize: 14,
  //   fontWeight: FontWeight.w400, // Regular
  //   color: AppColors.darkGray,
  // );

  // static TextStyle buttonText = GoogleFonts.lato(
  //   fontSize: 14,
  //   fontWeight: FontWeight.w700, // Bold
  //   color: AppColors.white,
  // );

  // // Caption
  // static TextStyle caption = GoogleFonts.lato(
  //   fontSize: 12,
  //   fontWeight: FontWeight.w400, // Regular
  //   color: AppColors.slateGray,
  // );

  // // Special
  // static TextStyle accent = GoogleFonts.lemon(
  //   fontSize: 16,
  //   fontWeight: FontWeight.w400, // Regular
  //   color: AppColors.black,
  // );
  //edit all font sizes to be responsive

  static TextStyle heading2(BuildContext context) {
    return GoogleFonts.lato(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w700,
      color: AppColors.black,
    );
  }

  static TextStyle heading3(BuildContext context) {
    return GoogleFonts.lato(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w700,
      color: AppColors.black,
    );
  }

  static TextStyle bodyLarge(BuildContext context) {
    return GoogleFonts.lato(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w900,
      color: AppColors.black,
    );
  }

  static TextStyle bodyMedium(BuildContext context) {
    return GoogleFonts.lato(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
      color: AppColors.darkGray,
    );
  }

  static TextStyle bodySmall(BuildContext context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
      color: AppColors.slateGray,
    );
  }

  static TextStyle labelBold(BuildContext context) {
    return GoogleFonts.lato(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w700,
      color: AppColors.black,
    );
  }

  static TextStyle labelRegular(BuildContext context) {
    return GoogleFonts.lato(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
      color: AppColors.darkGray,
    );
  }

  static TextStyle buttonText(BuildContext context) {
    return GoogleFonts.lato(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w700,
      color: AppColors.white,
    );
  }

  static TextStyle caption(BuildContext context) {
    return GoogleFonts.lato(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
      color: AppColors.slateGray,
    );
  }

  static TextStyle accent(BuildContext context) {
    return GoogleFonts.lemon(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
      color: AppColors.black,
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  //get scale factor
  final double scaleFactor = getScaleFactor(context);
  //calculate responsive text size
  final double responsiveFontSize = fontSize * scaleFactor;
  //calculate font size limits
  final double lowerLimit = fontSize * 0.8;
  final double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  final double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 500;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
