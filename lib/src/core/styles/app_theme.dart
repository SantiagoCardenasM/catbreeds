import 'package:flutter/material.dart';
import 'package:catbreeds/src/core/styles/app_colors.dart';

class AppTheme {
  AppTheme._(); 

  static ThemeData defaultTheme() {
    return ThemeData(
      fontFamily: 'Karma',
      primaryColor: AppColors.brownPrimary,
      scaffoldBackgroundColor: Colors.white,      
      indicatorColor: AppColors.brownPrimary,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: AppColors.brownPrimary,
        selectionColor: AppColors.brownPrimary.withOpacity(0.5),
        selectionHandleColor: AppColors.brownPrimary,
      ),
      textTheme: const TextTheme(
        // Title
        titleLarge: TextStyle(
          color: AppColors.brownPrimary,
          fontSize: 27,
          fontFamily: 'Karma',
          decoration: TextDecoration.none,
          fontWeight: FontWeight.w600,
        ),     
        titleMedium: TextStyle(
          color: AppColors.brownPrimary,
          fontSize: 22,
          fontFamily: 'Karma',
          decoration: TextDecoration.none,
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: AppColors.brownPrimary,
          fontSize: 19,
          fontFamily: 'Karma',
          decoration: TextDecoration.none,
          fontWeight: FontWeight.w500,
        ),

        // Body
        bodyLarge: TextStyle(
          color: AppColors.blueDarkTitles,
          fontSize: 17,
          letterSpacing: 0,
          fontFamily: 'Karma',
          decoration: TextDecoration.none,
          fontWeight: FontWeight.w400,
          height: 1.1,
        ),
        bodyMedium: TextStyle(
          color: AppColors.blueDarkTitles,
          fontSize: 16,
          fontFamily: 'Karma',
          decoration: TextDecoration.none,
        ),
        bodySmall: TextStyle(
          color: AppColors.blueDarkTitles,
          fontSize: 14,
          fontFamily: 'Karma',
          decoration: TextDecoration.none,
        ),
        

        // Subtitle
        labelMedium: TextStyle(
          color: AppColors.blueDarkTitles,
          fontSize: 20,
          fontFamily: 'Karma',
          decoration: TextDecoration.none,
        ),
        labelSmall: TextStyle(
          color: AppColors.blueDarkTitles,
          fontSize: 12,
          fontFamily: 'Karma',
          decoration: TextDecoration.none,
        ),
      ),
    );
  }

  //buttoms
  static ThemeData buttomStyle() {
    return ThemeData(
      fontFamily: 'Karma',
      primaryColor: AppColors.blueDarkTitles,
      scaffoldBackgroundColor: Colors.white,      
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          color: Colors.white,
          fontSize: 17,
          fontFamily: 'Karma',
          fontWeight: FontWeight.w800,
        ),        
      ),
    );
  }
 

}
