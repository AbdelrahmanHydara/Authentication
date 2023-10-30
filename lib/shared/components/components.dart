import 'package:authentication/modules/auth/widget/custom_text_app_bar.dart';
import 'package:flutter/material.dart';

Widget defaultAppBarAuth() => AppBar(
  title: const CustomTextAppBar(text: 'Sign In'),
  elevation: 0,
  centerTitle: true,
);