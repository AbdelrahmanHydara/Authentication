import 'package:authentication/modules/auth/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController
{
  var formKey = GlobalKey<FormState>();

  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;

  register() async
  {
    if(formKey.currentState!.validate())
    {
    }
      update();
  }

  goToLogin()
  {
    Get.off(const LoginScreen());
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

  @override
  dispose()
  {
    email.dispose();
    password.dispose();
    phone.dispose();
    username.dispose();
    super.dispose();
  }
}