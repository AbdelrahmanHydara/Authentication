import 'package:authentication/modules/auth/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessRegisterController extends GetxController
{
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;

  goToLogin()
  {
    Get.to(const LoginScreen());
  }

  @override
  void onInit()
  {
    email = TextEditingController();
    password = TextEditingController();
    username = TextEditingController();
    phone = TextEditingController();
    super.onInit();
  }

}