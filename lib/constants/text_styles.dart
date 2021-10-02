import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thinkpeople_test/constants/colors.dart';

class AppStyles {
  static TextStyle bigText = GoogleFonts.montserrat(
      fontSize: 19,
      fontWeight: FontWeight.w700,
      color: AppColors.buttonColor,
      letterSpacing: 4);

  static TextStyle smallText = GoogleFonts.montserrat(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: AppColors.smallTextColor,
      letterSpacing: 4);

  static TextStyle textStyle = GoogleFonts.montserrat(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: AppColors.whiteTextColor,
      letterSpacing: 6);

  static TextStyle greytextStyle = GoogleFonts.montserrat(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: AppColors.greyColor,
  );
  static TextStyle signText = GoogleFonts.montserrat(
      fontSize: 13,
      fontWeight: FontWeight.w500,
      color: AppColors.smallTextColor,
      letterSpacing: 0);
}
