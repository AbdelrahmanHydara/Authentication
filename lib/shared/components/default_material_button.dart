import 'package:authentication/shared/styles/themes/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

Widget defaultMaterialButton({
  required String text,
  required Function() onTap,
  double radius = 0,
  double? width,
  double? height,
}) => InkWell(
  onTap: onTap,
  child: Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: AppColors.defaultColor,
      borderRadius: BorderRadius.circular(radius),
    ),
    child: Center(
      child: Text(
        text,
        style: const TextStyle(
          color: AppColors.defaultColorText,
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ),
);