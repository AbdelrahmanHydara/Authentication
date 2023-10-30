import 'package:authentication/modules/auth/forget_password/reset_password/reset_passwoed_screen.dart';
import 'package:get/get.dart';

class VerifyCodeController extends GetxController
{
  goToResetPassword()
  {
    Get.to(const ResetPasswordScreen());
  }

  // @override
  // void onInit()
  // {
  //   super.onInit();
  // }

}
