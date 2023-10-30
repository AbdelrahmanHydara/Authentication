import 'package:authentication/controller/auth/register_controller.dart';
import 'package:authentication/core/functions/valid_in_put.dart';
import 'package:authentication/shared/components/default_text_form_field.dart';
import 'package:authentication/shared/styles/icons/icon_broken.dart';
import 'package:authentication/shared/styles/themes/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextFormFieldRegister extends GetView<RegisterController>
{
  const CustomTextFormFieldRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        children:
        [
          const SizedBox(
            height: 30,
          ),
          defaultTextFormField(
            validate: (value)
            {
              return validInput(
                min: 3,
                max: 21,
                type: 'username',
                value: value!,
              );
            },
            controller: controller.username,
            labelText: 'Username'.tr,
            hintText: 'Enter Your Username'.tr,
            color: AppColors.defaultColor,
            type: TextInputType.name,
            suffix: IconBroken.Profile,
          ),
          const SizedBox(
            height: 25,
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
            controller: controller.password,
            labelText: 'Password'.tr,
            hintText: 'Enter Your Password'.tr,
            color: AppColors.defaultColor,
            type: TextInputType.visiblePassword,
            suffix: IconBroken.Lock,
          ),
          const SizedBox(
            height: 25,
          ),
          defaultTextFormField(
            validate: (value)
            {
              return validInput(
                min: 11,
                max: 11,
                type: 'phone',
                value: value!,
              );
            },
            controller: controller.phone,
            labelText: 'Phone'.tr,
            hintText: 'Enter Your Phone'.tr,
            color: AppColors.defaultColor,
            type: TextInputType.phone,
            suffix: IconBroken.Call,
          ),
          const SizedBox(
            height: 12,
          ),
        ]
        ,
      ),
    );
  }
}
