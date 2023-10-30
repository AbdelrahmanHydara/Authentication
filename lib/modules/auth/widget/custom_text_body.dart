import 'package:authentication/shared/styles/themes/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget customTextBody({
  required String text,
  double fontSize = 20,
}) => Text(
  text.tr,
  style: TextStyle(
    color: AppColors.defaultColorGrey500,
    fontSize: fontSize,
  ),
  textAlign: TextAlign.center,
);