import 'package:flutter/material.dart';

Future<void> showAppDialog({
  @required BuildContext context,
  @required Widget child,
  Function onActionPressed,
  @required String title,
}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.green),
        ),
        content: SingleChildScrollView(child: child),
        actions: <Widget>[
          FlatButton(
            onPressed: () => onActionPressed,
            child: const Text('Ok'),
          ),
        ],
      );
    },
  );
}
