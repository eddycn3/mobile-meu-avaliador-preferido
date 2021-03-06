import 'package:flutter/material.dart';
import 'package:my_personal_avaliator/presentation/auth/register/register_form.dart';
import 'package:my_personal_avaliator/presentation/auth/sign_in/login_page.dart';
import 'package:my_personal_avaliator/presentation/home_page.dart';
import 'package:my_personal_avaliator/presentation/splash_page.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> getAppRoutes(
      BuildContext appContext) {
    return {
      SplashPage.id: (context) => SplashPage(),
      HomePage.id: (context) => HomePage(),
      LoginPage.id: (context) => LoginPage(),
      RegisterForm.id: (context) => RegisterForm()
    };
  }
}
