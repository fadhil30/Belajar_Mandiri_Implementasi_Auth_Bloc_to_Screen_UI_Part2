import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sarang_app/src/theme_manager/color_manager.dart';
import 'package:sarang_app/src/theme_manager/font_manager.dart';

TextStyle _getTextStyle(
  double fontSzie,
  String fontFamily,
  FontWeight fontWeight,
  Color color,
) {
  return GoogleFonts.poppins().copyWith(
    fontSize: fontSzie,
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    color: color,
  );
}

TextStyle getWhiteTextstyle({
  double fontSize = FontSizeManager.f16,
  FontWeight fontWeight = FontWeightManager.regular,
}) {
  return _getTextStyle(
      fontSize, FontFamilyConstant.fontFamily, fontWeight, ColorManager.white);
}

TextStyle getBlack60Textstyle({
  double fontSize = FontSizeManager.f16,
  FontWeight fontWeight = FontWeightManager.regular,
}) {
  return _getTextStyle(fontSize, FontFamilyConstant.fontFamily, fontWeight,
      ColorManager.black60);
}

TextStyle getBlack30Textstyle({
  double fontSize = FontSizeManager.f16,
  FontWeight fontWeight = FontWeightManager.regular,
}) {
  return _getTextStyle(fontSize, FontFamilyConstant.fontFamily, fontWeight,
      ColorManager.black30);
}

TextStyle getBlackTextstyle({
  double fontSize = FontSizeManager.f16,
  FontWeight fontWeight = FontWeightManager.regular,
}) {
  return _getTextStyle(
      fontSize, FontFamilyConstant.fontFamily, fontWeight, ColorManager.black);
}

TextStyle getGrey60Textstyle({
  double fontSize = FontSizeManager.f14,
  FontWeight fontWeight = FontWeightManager.regular,
}) {
  return _getTextStyle(
      fontSize, FontFamilyConstant.fontFamily, fontWeight, ColorManager.grey60);
}
