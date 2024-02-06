import 'package:flutter/material.dart';

abstract class AppStyle
{
  // Regular
  static const TextStyle styleRegular16 = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  // Medium
  static const TextStyle styleMedium16 = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );
  static const TextStyle styleMedium18 = TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );

  // Semi-bold
  static const TextStyle styleSemiBold16 = TextStyle(
    color: Color(0xFF064060),
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  // Bold
  static const TextStyle styleBold16 = TextStyle(
    color: Color(0xFF4EB7F2),
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
    height: 0,
  );

}