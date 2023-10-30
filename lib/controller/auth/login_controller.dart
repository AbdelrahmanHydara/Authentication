import 'package:authentication/modules/auth/forget_password/forget_password_screen.dart';
import 'package:authentication/modules/auth/register/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController
{
  late TextEditingController email;
  late TextEditingController password;
  var formKey = GlobalKey<FormState>();
  bool isShowPassword = true;

  login()
  {
    formKey.currentState!.validate();
  }

  goToRegister()
  {
    Get.off(const RegisterScreen());
  }

  goToForgetPassword()
  {
    Get.to(const ForgetPasswordScreen());
  }

  showPassword()
  {
    isShowPassword = !isShowPassword;
    update();
  }

  @override
  void onInit()
  {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  dispose()
  {
    email.dispose();
    password.dispose();
    super.dispose();
  }

}