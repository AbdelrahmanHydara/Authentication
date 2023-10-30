import 'package:authentication/controller/auth/login_controller.dart';
import 'package:authentication/core/functions/valid_in_put.dart';
import 'package:authentication/shared/components/default_text_form_field.dart';
import 'package:authentication/shared/styles/icons/icon_broken.dart';
import 'package:authentication/shared/styles/themes/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextFormField extends GetView<LoginController>
{
  const CustomTextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: GetBuilder<LoginController>(
        builder: (controller) => Column(
          children:
          [
            const SizedBox(
              height: 35,
            ),
            defaultTextFormField(
              controller: controller.email,
              labelText: 'Email'.tr,
              hintText: 'Enter Your Email'.tr,
              color: AppColors.defaultColor,
              type: TextInputType.emailAddress,
              suffix: IconBroken.Message,
              validate: (value)
              {
                return validInput(
                  min: 8,
                  max: 21,
                  type: 'email',
                  value: value!,
                );
              },
            ),
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
              isPassword: controller.isShowPassword,
              validate: (value)
              {
                return validInput(
                  min: 8,
                  max: 21,
                  type: 'password',
                  value: value!,
                );
              },
              suffixPressed: ()
              {
                controller.showPassword();
              },
            ),
            const SizedBox(
              height: 15,
            ),
          ]
          ,
        ),
      ),
    );
  }
}
