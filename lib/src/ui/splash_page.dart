import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Opacity(opacity: 0.5, child: Image.asset("images/login_main.png")),
          SizedBox(
            height: 50.0,
          ),
          Text(
            "Carregando...",
            style: TextStyle(fontSize: 40, color: Colors.green[500]),
          )
        ],
      ),
    );
  }
}
