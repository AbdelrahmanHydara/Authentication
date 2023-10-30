import 'package:authentication/controller/auth/login_controller.dart';
import 'package:authentication/core/functions/alert_app_exit.dart';
import 'package:authentication/modules/auth/login/custom_text_form_field.dart';
import 'package:authentication/modules/auth/widget/custom_material_button.dart';
import 'package:authentication/modules/auth/widget/custom_text_app_bar.dart';
import 'package:authentication/modules/auth/widget/custom_text_body.dart';
import 'package:authentication/modules/auth/widget/custom_text_head.dart';
import 'package:authentication/shared/components/default_text_button.dart';
import 'package:authentication/shared/constants/constants.dart';
import 'package:authentication/shared/styles/themes/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget
{
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    LoginController controller = Get.put(LoginController());

    return Scaffold(
      appBar: AppBar(
        title: CustomTextAppBar(text: 'Sign In'.tr),
      ),
      body: WillPopScope(
        onWillPop: alertAppExit,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: controller.formKey,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children:
              [
                Image.asset(AppAssets.loginImage,height: 250),
                customTextHead( text: 'Welcome Back'),
                const SizedBox(
                  height: 8,
                ),
                customTextBody(text: 'Sign In Now With Your Email And Password'),
                const CustomTextFormField(),
                InkWell(
                  onTap: ()
                  {
                    controller.goToForgetPassword();
                  },
                  child: Text( 'Forget Password?'.tr,
                  style: TextStyle(
                    color: AppColors.defaultColorGrey500,
                    fontSize: 18,),
                  textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(
                    height: 20,
                ),
                CustomMaterialButton(
                  onTap: ()
                  {
                    controller.login();
                  },
                  text: 'Sign In'.tr,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  [
                    Text(
                      'Don\'t have an account?'.tr,
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColors.defaultColorGrey500,
                      ),
                    ),
                    defaultTextButton(
                      onPressed: ()
                      {
                        controller.goToRegister();
                      },
                      text: 'Sign Up'.tr,
                      fontSize: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
