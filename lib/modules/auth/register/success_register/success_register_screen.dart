import 'package:authentication/modules/auth/login/login_screen.dart';
import 'package:authentication/modules/auth/widget/custom_material_button.dart';
import 'package:authentication/modules/auth/widget/custom_text_app_bar.dart';
import 'package:authentication/modules/auth/widget/custom_text_body.dart';
import 'package:authentication/modules/auth/widget/custom_text_head.dart';
import 'package:authentication/shared/styles/icons/icon_broken.dart';
import 'package:authentication/shared/styles/themes/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessRegisterScreen extends StatelessWidget
{
  const SuccessRegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: CustomTextAppBar(text: 'Success Sign In'.tr),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Center(
          child: Column(
            children:
            [
              Expanded(
                child: ListView(
                  children:
                  [
                    const Icon(
                      IconBroken.Shield_Done,
                      size: 350,
                      color: AppColors.defaultColor,
                    ),
                    customTextHead( text: 'Congratulations'.tr),
                    const SizedBox(
                      height: 10,
                    ),
                    customTextBody(
                      text: 'Successfully Registered'.tr,
                      fontSize: 25,
                    ),
                  ],
                ),
              ),
              CustomMaterialButton(
                onTap: ()
                {
                  Get.off(const LoginScreen());
                },
                text: 'Go To Sign Up'.tr,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
