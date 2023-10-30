import 'package:authentication/controller/auth/forget_password/forgetpassword_controller.dart';
import 'package:authentication/core/functions/valid_in_put.dart';
import 'package:authentication/modules/auth/widget/custom_material_button.dart';
import 'package:authentication/modules/auth/widget/custom_text_app_bar.dart';
import 'package:authentication/modules/auth/widget/custom_text_body.dart';
import 'package:authentication/modules/auth/widget/custom_text_head.dart';
import 'package:authentication/shared/components/default_text_form_field.dart';
import 'package:authentication/shared/styles/icons/icon_broken.dart';
import 'package:authentication/shared/styles/themes/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen extends StatelessWidget
{
  const ForgetPasswordScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
{
  ForgetPasswordController controller = Get.put(ForgetPasswordController());

    return Scaffold(
      backgroundColor: AppColors.defaultColorBackground,
      appBar: AppBar(
        title: CustomTextAppBar(text: 'Forget Password'.tr),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children:
          [
            customTextHead( text: 'Check Email'.tr,
            fontSize: 35
            ),
            const SizedBox(
              height: 15,
            ),
            customTextBody(
                text: 'Please Enter Your Email Address To \n Receive A Verification Code'.tr
            ),
            const SizedBox(
              height: 45,
            ),
            defaultTextFormField(
              validate: (value)
              {
                return validInput(
                  min: 8,
                  max: 21,
                  type: 'email',
                  value: value!,
                );
              },
              controller: controller.email,
              labelText: 'Email'.tr,
              hintText: 'Enter Your Email'.tr,
              color: AppColors.defaultColor,
              type: TextInputType.emailAddress,
              suffix: IconBroken.Message,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomMaterialButton(
              onTap: ()
              {
                controller.goToVerifyCode();
              },
              text: 'Check'.tr,
            ),
          ],
        ),
      ),
    );
 }
}
