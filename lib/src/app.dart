import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_personal_avaliator/src/blocs/auth/auth_bloc.dart';
import 'package:my_personal_avaliator/src/models/repos/user_repo.dart';
import 'package:my_personal_avaliator/src/ui/common/loading_indicator.dart';
import 'package:my_personal_avaliator/src/ui/home_page.dart';
import 'package:my_personal_avaliator/src/ui/login_page.dart';
import 'package:my_personal_avaliator/src/ui/register_form.dart';
import 'package:my_personal_avaliator/src/ui/splash_page.dart';

class App extends StatelessWidget {
  final UserRepo userRepo;

  App({Key key, @required this.userRepo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu Avaliador Preferido',
      theme: ThemeData(
        // heme of your application.
        scaffoldBackgroundColor: Color(0XFFD9E7E2),
        primarySwatch: Colors.green,
      ),
      home: RegisterForm(userRepo: userRepo),
      // home: BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
      //   if (state is AuthSucess) {
      //     return HomePage();
      //   }

      //   if (state is AuthFailure) {
      //     return LoginPage(userRepo: userRepo);
      //   }

      //   if (state is AuthInProgress) {
      //     return LoadingIndicator();
      //   }
      //   return SplashPage(); //Splash
      // }),
    );
  }
}
