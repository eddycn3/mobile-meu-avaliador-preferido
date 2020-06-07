import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_personal_avaliator/src/ui/widgets/app_icon_button.dart';
import 'package:my_personal_avaliator/src/utils/regex_utils.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  int currentFormIndex = 1;
  bool isBackButtonVisible = false;
  final _formKey = GlobalKey<FormState>();
  CarouselController _carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  //HEADER
                  Column(
                    children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Visibility(
                              replacement: SizedBox(
                                height: null,
                                width: 70,
                              ),
                              visible: isBackButtonVisible,
                              child: IconButton(
                                padding: EdgeInsets.all(0.0),
                                onPressed: () {
                                  _carouselController.jumpToPage(0);
                                },
                                icon: Icon(Icons.arrow_back),
                                iconSize: 35,
                                color: Colors.black54,
                              ),
                            ),
                            Flexible(
                              child: Icon(
                                Icons.assignment,
                                size: 70,
                                color: Colors.green[200],
                              ),
                            ),
                            SizedBox(
                              height: null,
                              width: 60,
                            ),
                          ]),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          currentFormIndex == 1
                              ? "Escolha um email e uma senha"
                              : "Agora seus dados para terminar :)",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
                            fontFamily: "SourceSansPro",
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),

                  //MAIN FORM------------------------------------------------
                  SizedBox(height: 40),
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
                          isBackButtonVisible =
                              currentFormIndex == 1 ? false : true;
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

                  AppIconButtom(
                      icon: currentFormIndex == 1 ? Icons.skip_next : null,
                      label: currentFormIndex == 1 ? "Próximo" : "Salvar",
                      onIconButtonPressed: () {
                        if (_formKey.currentState.validate()) {
                          if (currentFormIndex == 1) {
                            _carouselController.jumpToPage(1);
                          } else {}
                        }
                      }),

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
            validator: (value) {
              if (value.isEmpty) {
                return "entre com um e-mail";
              }
              if (!RegexUtils.isEmail(value)) {
                return "entre com um e-mail válido";
              }
              return null;
            },
            keyboardType: TextInputType.emailAddress,
            cursorColor: Colors.green,
            decoration: InputDecoration(
              hintText: "E-MAIL",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return "entre com uma senha";
              }
              return null;
            },
            obscureText: true,
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
            validator: (value) {
              if (value.isEmpty) {
                return "entre com seu nome";
              }
              return null;
            },
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
            validator: (value) {
              if (value.isEmpty) {
                return "entre com o telefone";
              }
              return null;
            },
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
