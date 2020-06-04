import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  int currentFormIndex = 1;
  CarouselController _carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.assignment,
                    size: 70,
                    color: Colors.green[200],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Escolha um email e uma senha",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black54,
                      fontFamily: "SourceSansPro",
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                CarouselSlider(
                  carouselController: _carouselController,
                  items: <Widget>[
                    FirstFormStep(),
                    SecondFormStep(),
                  ],
                  options: CarouselOptions(
                    onPageChanged: (value, reason) {
                      setState(() {
                        currentFormIndex = value + 1;
                      });
                    },
                    height: 300,
                    viewportFraction: 1,
                    initialPage: 0,
                    reverse: false,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.bottomRight,
                      child: RaisedButton.icon(
                        color: Colors.green,
                        splashColor: Colors.green[300],
                        onPressed: currentFormIndex == 1
                            ? () {
                                _carouselController.jumpToPage(1);
                              }
                            : null,
                        icon: Icon(
                          Icons.skip_next,
                          color: Colors.white,
                        ),
                        label: Text(
                          "Próximo",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              letterSpacing: 3,
                              fontFamily: "SourceSansPro",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 60),
                Text(
                  "$currentFormIndex / 2",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                      fontFamily: "Pacifico"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FirstFormStep extends StatelessWidget {
  const FirstFormStep({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            cursorColor: Colors.green,
            decoration: InputDecoration(
              hintText: "E-MAIL",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            cursorColor: Colors.green,
            decoration: InputDecoration(
              hintText: "SENHA",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}

class SecondFormStep extends StatelessWidget {
  const SecondFormStep({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            cursorColor: Colors.green,
            decoration: InputDecoration(
              hintText: "NOME COMPLETO",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            cursorColor: Colors.green,
            decoration: InputDecoration(
              hintText: "EMPRESA",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            cursorColor: Colors.green,
            decoration: InputDecoration(
              hintText: "SITE",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            cursorColor: Colors.green,
            decoration: InputDecoration(
              hintText: "TELEFONE",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
