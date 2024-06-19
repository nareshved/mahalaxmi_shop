
import 'package:flutter/material.dart';
import 'app_colors.dart';

var mlightTheme = ThemeData(
  brightness: Brightness.light,

  colorScheme: const ColorScheme.light(

    surface: backgroundColor,
    primary: primaryColor,
    onSurface: onBackgroundTextColor,
    primaryContainer: primaryContainerColor,
    onPrimaryContainer: onPrimaryContainerLableTextColor,
     
  ),

  textTheme: const TextTheme(

    headlineMedium: TextStyle(
      fontFamily: "Poppins",
      fontSize: 25,
      fontWeight: FontWeight.w500,
      color: onBackgroundTextColor,
    ),

    headlineSmall: TextStyle(
      fontFamily: "Poppins",
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: onBackgroundTextColor,
    ),

    bodyMedium: TextStyle(
      fontFamily: "Poppins",
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: onBackgroundTextColor,
    ), 

    bodySmall: TextStyle(
      fontFamily: "Poppins",
      fontSize: 10,
      fontWeight: FontWeight.w500,
      color: onBackgroundTextColor,
    ),

    labelMedium: TextStyle(
      fontFamily: "Poppins",
      fontSize: 10,
      fontWeight: FontWeight.w500,
      color: onPrimaryContainerColor,
    ),

  ),

);



// dark theme


var mDarkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      background: darkBgColor,
      primary: darkPrimaryColor,
      onBackground: darkOnBackground,
      primaryContainer: darkSecondryColor,
      onPrimaryContainer: darkOnPrimaryContainerColor,
    ),

      drawerTheme: const DrawerThemeData(

        backgroundColor: darkPrimaryContaainer,
        surfaceTintColor: darkPrimaryContaainer
      ),



    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontFamily: "Poppins",
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: darkOnBackground,
      ),
      headlineSmall: TextStyle(
        fontFamily: "Poppins",
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: darkOnBackground,
      ),
      bodyMedium: TextStyle(
        fontFamily: "Poppins",
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: darkOnBackground,
      ),
      bodySmall: TextStyle(
        fontFamily: "Poppins",
        fontSize: 10,
        fontWeight: FontWeight.w500,
        color: darkOnBackground,
      ),
      labelMedium: TextStyle(
        fontFamily: "Poppins",
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: onPrimaryContainerColor,
      ),
    ));

























// final mDarkTheme = ThemeData(
// brightness: Brightness.dark,

// colorScheme: ColorScheme.fromSeed(
// seedColor: Color.fromRGBO(255, 87, 34, 1),


// ),

// );