import 'package:flutter/material.dart';

class ErrorMsg extends StatelessWidget {
  final String error;

  const ErrorMsg({Key key, @required this.error}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: FractionalOffset.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.error_outline, color: Colors.red[300], size: 30.0),
          Container(
            padding: EdgeInsets.only(top: 16.0),
            child: Text(
              error,
              style: TextStyle(
                color: Colors.red[300],
              ),
            ),
          )
        ],
      ),
    );
  }
}
