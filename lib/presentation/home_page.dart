import 'package:flutter/material.dart';
import 'package:my_personal_avaliator/presentation/tab_pages/alunos_page.dart';
import 'package:my_personal_avaliator/presentation/tab_pages/backup_page.dart';
import 'package:my_personal_avaliator/presentation/tab_pages/menu_page.dart';
import 'package:my_personal_avaliator/presentation/tab_pages/profile_page.dart';

class HomePage extends StatelessWidget {
  static const id = "/home";
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: TabBarView(
          children: <Widget>[
            MenuPage(),
            AlunosPage(),
            BackupPage(),
            ProfilePage()
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.menu),
            ), //MENU
            Tab(
              icon: Icon(Icons.people),
            ), //Alunos
            Tab(
              icon: Icon(Icons.backup),
            ), //Backup
            Tab(
              icon: Icon(Icons.person),
            ), //Contatos
          ],
          labelColor: Colors.green,
          unselectedLabelColor: Colors.grey,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorPadding: EdgeInsets.all(5.0),
          indicatorColor: Colors.green[500],
        ),
      ),
    );
  }
}
