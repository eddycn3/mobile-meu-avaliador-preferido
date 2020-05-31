import 'package:flutter/material.dart';
import 'package:my_personal_avaliator/src/ui/login_page.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu Avaliador Preferido',
      theme: ThemeData(
        // heme of your application.
        scaffoldBackgroundColor: Color(0XFFD9E7E2),
        primarySwatch: Colors.green,
      ),
      home: LoginPage(),
    );
  }
}
