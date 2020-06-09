import 'package:flutter/material.dart';
import 'package:my_personal_avaliator/src/models/repos/user_repo.dart';
import 'package:my_personal_avaliator/src/ui/home_page.dart';
import 'package:my_personal_avaliator/src/ui/login_page.dart';
import 'package:my_personal_avaliator/src/ui/register_form.dart';

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
