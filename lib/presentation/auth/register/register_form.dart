import 'package:carousel_slider/carousel_slider.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'package:my_personal_avaliator/app_constants.dart';
import 'package:my_personal_avaliator/application/auth/auth_bloc.dart';
import 'package:my_personal_avaliator/application/auth/register/register_bloc.dart';
import 'package:my_personal_avaliator/application/core/funcs_utils.dart';
import 'package:my_personal_avaliator/injection.dart';
import 'package:my_personal_avaliator/presentation/core/widgets/app_icon_button.dart';
import 'package:my_personal_avaliator/presentation/home_page.dart';

part 'first_form_step.dart';
part 'second_form_step.dart';

class RegisterForm extends StatefulWidget {
  static const id = "/register";

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final CarouselController _carouselController = CarouselController();

  int _currentFormIndex = 1;
  bool _isBackButtonVisible = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<RegisterBloc>(),
        child: BlocConsumer<RegisterBloc, RegisterState>(
          listener: (context, state) {
            state.authFailOrSucessOption.fold(() {}, (either) {
              either.fold((failure) {
                FlushbarHelper.createError(
                    duration: const Duration(seconds: 5),
                    message: failure.map(
                        serverError: (_) => "server error",
                        cpfAlredyInUse: (_) => "cpf existente",
                        idConfefAlredyInUse: (_) => "registro confef existente",
                        emailAlredyInUse: (_) => "email existente",
                        invalidEmailAndPasswordCombination: (_) =>
                            "")).show(context);
              }, (_) async {
                await Navigator.pushReplacementNamed(context, HomePage.id);
                context
                    .bloc<AuthBloc>()
                    .add(const AuthEvent.authCheckStarted());
              });
            });
          },
          builder: (context, state) {
            return Scaffold(
              body: SafeArea(
                child: Form(
                  autovalidate: state.showErrorMessages,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
// HEADER
                        Container(
                          padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Visibility(
                                      replacement: const SizedBox(
                                        width: 70,
                                      ),
                                      visible: _isBackButtonVisible,
                                      child: IconButton(
                                        padding: const EdgeInsets.all(0.0),
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
                                        size: 75,
                                        color: Colors.green[200],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 60,
                                    ),
                                  ]),
                              const SizedBox(height: 10),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  _currentFormIndex == 1
                                      ? "Suas informações de login"
                                      : "Agora seus dados para terminar :)",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black54,
                                    fontFamily: "SourceSansPro",
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

// MAIN FORM
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 20, 30, 10),
                          child: CarouselSlider(
                            carouselController: _carouselController,
                            items: const <Widget>[
                              FirstFormStep(),
                              SecondFormStep(),
                            ],
                            options: CarouselOptions(
                              onPageChanged: (value, reason) {
                                setState(() {
                                  _currentFormIndex = value + 1;
                                  if (_currentFormIndex == 1) {
                                    _isBackButtonVisible = false;
                                  } else {
                                    _isBackButtonVisible = true;
                                  }
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
                        ),

                        Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            child: AppIconButtom(
                                icon: _currentFormIndex == 1
                                    ? Icons.skip_next
                                    : null,
                                label: _currentFormIndex == 1
                                    ? "Próximo"
                                    : "Salvar",
                                onIconButtonPressed: null)),
// FOOTER
                        const SizedBox(height: 60),
                        Container(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Flex(
                                direction: Axis.horizontal,
                                children: <Widget>[
                                  const Checkbox(onChanged: null, value: true),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      showAppDialog(
                                          onActionPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          context: context,
                                          child: Container(
                                            height: 350,
                                            width: 400,
                                            child: Markdown(
                                              selectable: true,
                                              data: privacyPolicy,
                                            ),
                                          ),
                                          title: "Política de Privacidade");
                                    },
                                    child: Text.rich(
                                      TextSpan(
                                        text: "Você aceita os termos da",
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                                  '\npolitica de privacidade.',
                                              style: TextStyle(
                                                color: Colors.blue,
                                                decoration:
                                                    TextDecoration.underline,
                                              )),
                                          //
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "$_currentFormIndex / 2",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 30,
                                    fontFamily: "Pacifico"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
