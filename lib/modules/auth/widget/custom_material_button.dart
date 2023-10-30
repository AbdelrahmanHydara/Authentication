import 'package:authentication/shared/components/default_material_button.dart';
import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget
{
  const CustomMaterialButton({Key? key, required this.text, required this.onTap}) : super(key: key);

  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context)
  {
    return defaultMaterialButton(
      onTap: onTap,
      text: text,
      width: double.infinity,
      height: 50,
      radius: 30,
    );
  }
}
