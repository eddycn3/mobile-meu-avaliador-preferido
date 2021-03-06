import 'package:flutter/material.dart';

class ErrorContainer extends StatefulWidget {
  //final RegisterState state;
  const ErrorContainer({
    Key key,
  }) : super(key: key);

  @override
  _ErrorContainerState createState() => _ErrorContainerState();
}

class _ErrorContainerState extends State<ErrorContainer> {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: false, // widget.state is RegisterError ? true : false,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        width: double.infinity,
        height: 40,
        color: Colors.red,
        child: Text(
          "Desculpe, ocorreu um erro :(",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
