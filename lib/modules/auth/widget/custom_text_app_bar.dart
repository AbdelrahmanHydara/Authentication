import 'package:authentication/shared/styles/themes/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextAppBar extends StatelessWidget
{
  const CustomTextAppBar({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context)
  {
    return Text(
      text,
      style: TextStyle(
        color: AppColors.defaultColorGrey500,
        fontWeight: FontWeight.w600,
        fontSize: 28,
      ),
    );
  }
}
