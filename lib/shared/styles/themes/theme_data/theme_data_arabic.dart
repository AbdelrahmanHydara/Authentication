import 'package:authentication/shared/styles/themes/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData lightThemeDataArabic = ThemeData(
  scaffoldBackgroundColor: AppColors.defaultColorBackground,
  fontFamily: 'Cairo',
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: AppColors.defaultColor,
    ),
    color: AppColors.defaultColorAppBar,
    elevation: 0,
    centerTitle: true,
  ),
  primarySwatch: AppColors.defaultColor,
  primaryColor: AppColors.defaultColor,
);

