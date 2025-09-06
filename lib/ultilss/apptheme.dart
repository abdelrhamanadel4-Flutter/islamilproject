import 'package:flutter/material.dart';
import 'package:projectt/ultilss/appcolors.dart';

class AppTheme{
  static final ThemeData darktheme=ThemeData(
    primaryColor: Appcolors.primarycolor,
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Appcolors.whitecolor,

      unselectedItemColor: Appcolors.blackcolor,
      showUnselectedLabels: false,
    ),
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Appcolors.whitecolor
        )

  ), appBarTheme: AppBarTheme(
    backgroundColor: Appcolors.blackbgcolor,
    centerTitle: true,
    actionsIconTheme: IconThemeData(
      color: Appcolors.primarycolor
    ),

    iconTheme: IconThemeData(
      color: Appcolors.primarycolor,

    ),
  )
  );
}