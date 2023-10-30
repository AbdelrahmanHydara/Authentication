import 'package:authentication/core/localization/change_locale.dart';
import 'package:authentication/core/localization/translation.dart';
import 'package:authentication/core/services/services.dart';
import 'package:authentication/modules/language/language_screen.dart';
import 'package:authentication/routes.dart';
import 'package:authentication/shared/styles/themes/theme_data/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();

  await initialServices();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    MyLocaleController controllerLang = Get.put(MyLocaleController());

    return GetMaterialApp(
      translations: MyTranslation(),
      locale: controllerLang.initialLanguage,
      debugShowCheckedModeBanner: false,
      getPages: routes,
      theme: lightThemeData,
      home: const LanguageScreen(),
    );
  }
}

