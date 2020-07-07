import 'package:flutter/material.dart';

class AppIconButtom extends StatelessWidget {
  final IconData icon;
  final String label;
  final Function onIconButtonPressed;

  const AppIconButtom({this.icon, this.label, this.onIconButtonPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.green,
      splashColor: Colors.green[300],
      onPressed: () => onIconButtonPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            color: Colors.white,
          ),
          Text(
            label.toUpperCase(),
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                letterSpacing: 3,
                fontFamily: "SourceSansPro",
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      constraints: BoxConstraints(
        minWidth: 40,
        minHeight: 40,
      ),
      elevation: 8.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
    );
  }
}
