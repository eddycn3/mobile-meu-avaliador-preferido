import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_personal_avaliator/application/auth/auth_bloc.dart';
import 'package:my_personal_avaliator/injection.dart';
import 'package:my_personal_avaliator/application/core/navigation_bloc.dart';
import 'package:my_personal_avaliator/presentation/rotas.dart';

class App extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;
  const App({Key key, @required this.navigatorKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(create: (context) {
            return getIt<AuthBloc>()..add(const AuthEvent.authCheckStarted());
          }),
          BlocProvider<NavigatorBloc>(create: (context) {
            return NavigatorBloc(navigatorKey: navigatorKey);
          }),
        ],
        child: MaterialApp(
          navigatorKey: navigatorKey,
          title: 'Meu Avaliador Preferido',
          theme: ThemeData(
            scaffoldBackgroundColor: const Color(0xffd9e7e2),
            primarySwatch: Colors.green,
          ),
          routes: AppRoutes.getAppRoutes(context),
        ));
  }
}
