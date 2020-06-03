import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

//7A9968
/*
 * 
 {
    "user": {
        "user_name": "guilherme.mantrovani@maxavaliators.com",
        "password": "123456",
        "user_type": 1
    },
    "user_info": {
        "nome": "Guilherme Mantrovani",
        "empresa": "Max Avaliators",
        "site": "",
        "email": "guilherme.mantrovani@maxavaliators.com",
        "telefone": "019992534334"
    }
}
 */
class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          child: Column(
            children: <Widget>[
              Icon(Icons.assignment, size: 80, color: Colors.green[300]),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.green,
                      decoration: InputDecoration(
                        hintText: "email",
                        hintStyle: TextStyle(color: Colors.grey),
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.green,
                      decoration: InputDecoration(
                        hintText: "senha",
                        hintStyle: TextStyle(color: Colors.grey),
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.green,
                      decoration: InputDecoration(
                        hintText: "nome",
                        hintStyle: TextStyle(color: Colors.grey),
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.green,
                      decoration: InputDecoration(
                        hintText: "empresa",
                        hintStyle: TextStyle(color: Colors.grey),
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.green,
                      decoration: InputDecoration(
                        hintText: "site",
                        hintStyle: TextStyle(color: Colors.grey),
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.green,
                      decoration: InputDecoration(
                        hintText: "telefone",
                        hintStyle: TextStyle(color: Colors.grey),
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              FlatButton(
                  color: Colors.green[300],
                  onPressed: () {},
                  child: Text(
                    "Registrar",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 20.0),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
