import 'package:flutter/material.dart';

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
    /*textTheme: TextTheme(
      bodyMedium: AppStyle.styleMedium18.copyWith(color: Colors.black),
    ),*/
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
    // ################# Scaffold theme #################
    scaffoldBackgroundColor: Colors.grey[900],
    // ################# Text theme #################
    /*textTheme: const TextTheme(
      bodyMedium: AppStyle.styleMedium18,
    ),*/
    // ################# Drawer theme #################
    drawerTheme: DrawerThemeData(
      backgroundColor: Colors.grey[900],
    ),
    // ################# Icon theme #################
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
  );
}