import 'package:flutter/material.dart';
import 'package:image_generator/utils/app_styles.dart';


// Summary: AppThemes class to store all the app themes.
// The AppThemes class contains two static ThemeData objects, lightTheme and darkTheme.
// The lightTheme object is used to define the light theme of the app.
// The darkTheme object is used to define the dark theme of the app.

class AppThemes
{
  static ThemeData lightTheme = ThemeData(
    //primarySwatch: Colors.blue,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    scaffoldBackgroundColor: Colors.white,
    // Text theme
    textTheme: TextTheme(
      bodyMedium: AppStyle.styleMedium18.copyWith(color: Colors.black),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    //primarySwatch: Colors.blue,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    scaffoldBackgroundColor: Colors.grey[900],
    // Text theme
    textTheme: const TextTheme(
      bodyMedium: AppStyle.styleMedium18,
    ),
  );
}