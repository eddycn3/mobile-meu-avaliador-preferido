import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFD9E7E2),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
                child: Container(
                    height: 130,
                    width: 130,
                    child: Opacity(
                        opacity: 0.6,
                        child: Image(
                          image: AssetImage("images/login_main.png"),
                        ))),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Meu Avaliador Preferido",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30.0,
                    color: Color(0xFF4D8B35),
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 45.0,
                width: 150,
              ),
              TextField(
                cursorColor: Colors.green,
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                cursorColor: Colors.green,
              ),
              SizedBox(
                height: 20.0,
              ),
              FlatButton(
                color: Color(0XFFA3BBBD),
                onPressed: () {},
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Não é cadastrado?",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  GestureDetector(
                    //IMPLEMENTAR CADASTRE AQUI
                    onTap: () {},
                    child: Text(
                      "Cadastre aqui!",
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
