import 'package:authentication/controller/auth/forget_password/reset_password_controller.dart';
import 'package:authentication/core/functions/valid_in_put.dart';
import 'package:authentication/modules/auth/forget_password/success_reset_passwoed/success_reset_password_screen.dart';
import 'package:authentication/modules/auth/widget/custom_material_button.dart';
import 'package:authentication/modules/auth/widget/custom_text_app_bar.dart';
import 'package:authentication/modules/auth/widget/custom_text_body.dart';
import 'package:authentication/modules/auth/widget/custom_text_head.dart';
import 'package:authentication/shared/components/default_text_form_field.dart';
import 'package:authentication/shared/styles/icons/icon_broken.dart';
import 'package:authentication/shared/styles/themes/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatelessWidget
{
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {

    ResetPasswordController controller = Get.put(ResetPasswordController());

    return Scaffold(
      appBar: AppBar(
        title: CustomTextAppBar(text: 'Reset Password'.tr),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            customTextHead(text: 'New Password'),
            const SizedBox(
              height: 16,
            ),
            customTextBody(text: 'Please Enter New Password'),
            const SizedBox(
              height: 25,
            ),
            defaultTextFormField(
              controller: controller.password,
              labelText: 'Password'.tr,
              hintText: 'Enter Your Password'.tr,
              color: AppColors.defaultColor,
              type: TextInputType.visiblePassword,
              suffix: IconBroken.Lock,
              validate: (value) {
                return validInput(
                  min: 8,
                  max: 21,
                  type: 'password',
                  value: value!,
                );
              },            ),
            const SizedBox(
              height: 25,
            ),
            defaultTextFormField(
              validate: (value)
              {
                return validInput(
                  min: 8,
                  max: 21,
                  type: 'password',
                  value: value!,
                );
              },
              controller: controller.rePassword,
              labelText: 'Password'.tr,
              hintText: 'Re Enter Your Password'.tr,
              color: AppColors.defaultColor,
              type: TextInputType.visiblePassword,
              suffix: IconBroken.Lock,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomMaterialButton(
              onTap: ()
              {
                Get.off(const SuccessResetPasswordScreen());
              },
              text: 'Save'.tr,
            ),
          ],
        ),
      ),
    );
  }
}
