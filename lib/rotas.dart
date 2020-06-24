import 'package:flutter/material.dart';
import 'package:my_personal_avaliator/infrastructure/repositorys/user_repo.dart';
import 'package:my_personal_avaliator/presentation/home_page.dart';
import 'package:my_personal_avaliator/presentation/login/login_page.dart';
import 'package:my_personal_avaliator/presentation/register/register_form.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> getAppRoutes(
      BuildContext appContext, UserRepo userRepo) {
    return {
      HomePage.id: (context) => HomePage(),
      LoginPage.id: (context) => LoginPage(userRepo: userRepo),
      RegisterForm.id: (context) => RegisterForm(userRepo: userRepo)
    };
  }
}
