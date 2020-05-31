import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: CircleAvatar(
                backgroundImage: AssetImage("images/fakeperson.png"),
                radius: 50.0,
              ),
            ),
            Text(
              "Carol C. Neto",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 40.0,
                  letterSpacing: 2.5,
                  fontFamily: "SourceSansPro",
                  fontWeight: FontWeight.w800),
            ),
            Text(
              "Avaliador".toUpperCase(),
              style: TextStyle(
                  color: Colors.teal.shade300,
                  fontSize: 20.0,
                  fontFamily: "SourceSansPro",
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5),
            ),
            SizedBox(
              height: 30,
              width: 200,
              child: Expanded(
                child: Divider(
                  thickness: 2,
                  color: Colors.teal.shade100,
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  "+ 55 019992564678",
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: "SourceSansPro"),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  "eddycn3@huhu.com",
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: "SourceSansPro"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
