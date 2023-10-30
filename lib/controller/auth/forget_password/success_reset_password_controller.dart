import 'package:authentication/modules/auth/forget_password/verifycode/verifycode_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessResetPasswordController extends GetxController
{
  late TextEditingController password;
  late TextEditingController rePassword;

  goToSuccessResetPassword()
  {
    Get.to(const VerifyCodeScreen());
  }

  @override
  void onInit()
  {
    password = TextEditingController();
    rePassword = TextEditingController();
    super.onInit();
  }

}