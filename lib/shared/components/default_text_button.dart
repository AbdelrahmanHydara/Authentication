import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

Widget defaultTextButton(
{
  required Function() onPressed,
  required String text,
  double fontSize = 24,
}) => TextButton(
  onPressed: onPressed ,
  child: Text(
    text.tr,
    style: TextStyle(
      fontSize: fontSize,
    ),
  ),
);