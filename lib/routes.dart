import 'package:authentication/core/middleware/my_middleware.dart';
import 'package:authentication/modules/auth/login/login_screen.dart';
import 'package:authentication/modules/language/language_screen.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes =
[
  GetPage(name: '/', page: () => const LanguageScreen(),
      middlewares: [MyMiddleware()]),
  GetPage(name: '/login', page: () => const LoginScreen()),
];