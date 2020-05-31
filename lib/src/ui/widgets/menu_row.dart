import 'package:flutter/material.dart';

class MenuRow extends StatelessWidget {
  final IconData iconData;
  final String menuItemText;

  MenuRow({this.iconData, this.menuItemText});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Flex(direction: Axis.vertical, children: <Widget>[
      Row(
        children: <Widget>[
          Icon(
            iconData,
            color: Colors.green[300],
            size: 30,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            menuItemText,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          )
        ],
      ),
      SizedBox(
        height: 30,
        width: 350,
        child: Divider(color: Colors.teal.shade200),
      )
    ]));
  }
}
