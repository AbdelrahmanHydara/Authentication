import 'package:authentication/controller/auth/register_controller.dart';
import 'package:authentication/core/functions/alert_app_exit.dart';
import 'package:authentication/modules/auth/register/custom_text_form_field.dart';
import 'package:authentication/modules/auth/widget/custom_material_button.dart';
import 'package:authentication/modules/auth/widget/custom_text_app_bar.dart';
import 'package:authentication/modules/auth/widget/custom_text_body.dart';
import 'package:authentication/modules/auth/widget/custom_text_head.dart';
import 'package:authentication/shared/components/default_text_button.dart';
import 'package:authentication/shared/styles/themes/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget
{
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {

    Get.lazyPut(() => RegisterController());

    return Scaffold(
      appBar: AppBar(
        title: CustomTextAppBar(text: 'Sign Up'.tr),
      ),
      body: WillPopScope(
        onWillPop: alertAppExit,
        child: GetBuilder<RegisterController>(
          builder: (controller) => Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: controller.formKey,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children:
                [
                  const SizedBox(
                    height: 20,
                  ),
                  customTextHead( text: 'Welcome Back'),
                  customTextBody(text: 'Create an account to get a personalized shopping experience.'),
                  const CustomTextFormFieldRegister(),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomMaterialButton(
                    onTap: ()
                    {
                      controller.register();
                    },
                    text: 'Sign Up'.tr,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    [
                      Text(
                        'Have an account?'.tr,
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColors.defaultColorGrey500,
                        ),
                      ),
                      defaultTextButton(
                        onPressed: ()
                        {
                          controller.goToLogin();
                        },
                        text: 'Sign In'.tr,
                        fontSize: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
