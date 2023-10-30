import 'package:authentication/shared/styles/themes/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData lightThemeData = ThemeData(
  scaffoldBackgroundColor: AppColors.defaultColorBackground,
  fontFamily: 'PlayfairDisplay',
  appBarTheme: const AppBarTheme(
    elevation: 0,
    centerTitle: true,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: AppColors.defaultColor,
    ),
    color: AppColors.defaultColorAppBar,
  ),
  primarySwatch: AppColors.defaultColor,
  primaryColor: AppColors.defaultColor,
);