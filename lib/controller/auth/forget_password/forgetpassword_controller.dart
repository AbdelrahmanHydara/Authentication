import 'package:authentication/modules/auth/forget_password/verifycode/verifycode_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordController extends GetxController
{
  late TextEditingController email;

  goToVerifyCode()
  {
    Get.to(const VerifyCodeScreen());
  }


  @override
  void onInit()
  {
    email = TextEditingController();
    super.onInit();
  }

  @override
  dispose()
  {
    email.dispose();
    super.dispose();
  }

}