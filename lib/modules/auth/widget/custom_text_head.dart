import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget customTextHead({
  required String text,
  double fontSize = 50,
}) => Text(
  text.tr,
  style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: fontSize,
  ),
  textAlign: TextAlign.center,
);