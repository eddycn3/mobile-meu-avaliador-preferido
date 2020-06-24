import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_personal_avaliator/application/blocs/auth/auth_bloc.dart';
import 'package:my_personal_avaliator/infrastructure/repositorys/user_repo.dart';
import 'package:my_personal_avaliator/presentation/core/loading_indicator.dart';
import 'package:my_personal_avaliator/presentation/home_page.dart';
import 'package:my_personal_avaliator/presentation/login/login_page.dart';
import 'package:my_personal_avaliator/presentation/splash_page.dart';
import 'package:my_personal_avaliator/rotas.dart';

class App extends StatelessWidget {
  final UserRepo userRepo;
  final GlobalKey<NavigatorState> navigatorKey;
  App({Key key, @required this.userRepo, @required this.navigatorKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Meu Avaliador Preferido',
      theme: ThemeData(
        // heme of your application.
        scaffoldBackgroundColor: Color(0XFFD9E7E2),
        primarySwatch: Colors.green,
      ),
      home: BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
        if (state is AuthSucess) {
          return HomePage();
        }

        if (state is AuthFailure) {
          return LoginPage(userRepo: userRepo);
        }

        if (state is AuthInProgress) {
          return LoadingIndicator();
        }
        return SplashPage(); //Splash
      }),
      routes: AppRoutes.getAppRoutes(context, userRepo),
    );
  }
}
