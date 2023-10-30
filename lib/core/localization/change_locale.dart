import 'package:authentication/core/services/services.dart';
import 'package:authentication/shared/styles/themes/theme_data/theme_data.dart';
import 'package:authentication/shared/styles/themes/theme_data/theme_data_arabic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyLocaleController extends GetxController
{
  Locale? initialLanguage;

  MyServices myServices = Get.find();

  ThemeData appTheme = lightThemeData;

  changeLang(String langCode)
  {
    Locale language = Locale(langCode);
    myServices.sharedPreferences.setString('lang', langCode);
    appTheme = langCode == 'ar' ? lightThemeDataArabic : lightThemeData;
    Get.updateLocale(language);
    Get.changeTheme(appTheme);
  }

  @override
  onInit()
  {
    var sharedPrefLang = myServices.sharedPreferences.get('lang');
    if(sharedPrefLang == 'ar')
    {
      initialLanguage = const Locale('ar');
      appTheme = lightThemeDataArabic;
    } else if(sharedPrefLang == 'en')
    {
      initialLanguage = const Locale('en');
      appTheme = lightThemeData;
    } else
    {
      initialLanguage = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}