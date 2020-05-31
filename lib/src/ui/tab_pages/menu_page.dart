import 'package:flutter/material.dart';
import 'package:my_personal_avaliator/src/ui/widgets/menu_row.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white54,
          appBar: AppBar(
            backgroundColor: Colors.green[300],
            centerTitle: true,
            leading: Container(),
            title: Text("Menu"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                MenuRow(
                  iconData: Icons.assignment_turned_in,
                  menuItemText: "Avaliações",
                ),
                MenuRow(
                  iconData: Icons.assignment,
                  menuItemText: "Treinos",
                ),
                MenuRow(
                    iconData: Icons.track_changes, menuItemText: "Exercícios")
              ],
            ),
          )),
    );
  }
}
