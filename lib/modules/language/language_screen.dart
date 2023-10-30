import 'package:authentication/core/localization/change_locale.dart';
import 'package:authentication/modules/auth/login/login_screen.dart';
import 'package:authentication/shared/components/default_material_button.dart';
import 'package:authentication/shared/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageScreen extends StatelessWidget
{
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    MyLocaleController controllerLang = Get.put(MyLocaleController());

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
           [
              Text(
               '1'.tr,
               style: const TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 32,
               ),
             ),
             const SizedBox(
               height: 30,
             ),
             const Image(image: AssetImage(AppAssets.chooseImage)),
             const SizedBox(
              height: 25,
            ),
            defaultMaterialButton(
              onTap: ()
              {
                controllerLang.changeLang('ar');
                Get.to(const LoginScreen());
              },
              text: 'Ar'.tr,
              width: 250,
              height: 55,
              radius: 20,
            ),
             const SizedBox(
               height: 30,
             ),
             defaultMaterialButton(
               onTap: ()
               {
                 controllerLang.changeLang('en');
                 Get.to(const LoginScreen());
               },
               text: 'En'.tr,
               width: 250,
               height: 55,
               radius: 20,
             ),
          ],
        ),
      ),
    );
  }
}
