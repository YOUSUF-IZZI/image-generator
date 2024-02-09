import 'package:flutter/material.dart';
import 'package:image_generator/helper/get_responsive_font_size.dart';

abstract class AppStyle
{
  // ############# Light #############
  /*static const TextStyle styleLight16 = TextStyle(
    color: Colors.grey,
    fontSize: getResponsiveFontSize(context, fontSize: fontSize),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w300,
  );*/
  static TextStyle styleLight16(BuildContext context)
  {
    return TextStyle(
      color: Colors.grey,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w300,
    );
  }
  // ############# Regular #############
  static TextStyle styleRegular16(BuildContext context)
  {
    return TextStyle(
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }
  /*static const TextStyle styleRegular16 = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );*/

  // ############# Medium #############
  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }
  /*static const TextStyle styleMedium16 = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );*/
  static TextStyle styleMedium18(BuildContext context) {
    return TextStyle(
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }
  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }
  /*static const TextStyle styleMedium18 = TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );*/

  // ############# Semi-bold #############
  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064060),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }
  /*static const TextStyle styleSemiBold16 = TextStyle(
    color: Color(0xFF064060),
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );*/
  static TextStyle styleSemiBold32(BuildContext context) {
    return TextStyle(
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 32),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }
  /*static const TextStyle styleSemiBold32 = TextStyle(
    color: Colors.white,
    fontSize: 32,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );*/

  // ############# Bold #############
  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF4EB7F2),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }
  /*static const TextStyle styleBold16 = TextStyle(
    color: Color(0xFF4EB7F2),
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
    height: 0,
  );*/

}