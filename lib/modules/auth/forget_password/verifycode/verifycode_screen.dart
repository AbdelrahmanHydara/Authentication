import 'package:authentication/controller/auth/forget_password/verifycode_controller.dart';
import 'package:authentication/modules/auth/widget/custom_text_app_bar.dart';
import 'package:authentication/modules/auth/widget/custom_text_body.dart';
import 'package:authentication/modules/auth/widget/custom_text_head.dart';
import 'package:authentication/shared/styles/themes/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';


class VerifyCodeScreen extends StatelessWidget
{
  const VerifyCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerifyCodeController controller = Get.put(VerifyCodeController());

    return Scaffold(
      backgroundColor: AppColors.defaultColorBackground,
      appBar: AppBar(
        title: CustomTextAppBar(text: 'Verification Code'.tr),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            customTextHead(text: 'Check Code'.tr, fontSize: 35),
            const SizedBox(
              height: 15,
            ),
            customTextBody(text: 'Please Enter The Digit Code Sent To'.tr),
            const SizedBox(
              height: 45,
            ),
            OtpTextField(
              fieldWidth: 60,
              borderRadius: BorderRadius.circular(20),
              numberOfFields: 5,
              focusedBorderColor: AppColors.defaultColor,
              borderColor: AppColors.defaultColor,
              showFieldAsBox: true,
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode)
              {
                controller.goToResetPassword();
              },
            ),
          ],
        ),
      ),
    );
  }
}
