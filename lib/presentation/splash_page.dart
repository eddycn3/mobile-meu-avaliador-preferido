import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Opacity(opacity: 0.5, child: Image.asset("images/login_main.png")),
          SizedBox(
            height: 50.0,
          ),
          Text(
            "Medindo Extremidades... ;)",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.grey, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
