import 'dart:io';
import 'package:authentication/shared/components/default_material_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertAppExit()
{
  Get.defaultDialog(
    title: 'Warning',
    middleText: 'Do you want to exit ?',
    actions:
    [
      defaultMaterialButton(
        onTap: ()
        {
          exit(0);
        },
        text: 'Confirm',
        radius: 20,
      ),
      const SizedBox(
        height: 5,
      ),
      defaultMaterialButton(
        onTap: ()
        {
          Get.back();
        },
        text: 'Cancel',
        radius: 20,
      ),
      const SizedBox(
        height: 5,
      ),
    ],
  );
  return Future.value(true);
}