import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hello_world_flutter/app_controlle.dart';
import 'package:hello_world_flutter/drawer.dart';
import 'package:hello_world_flutter/header.dart';
import 'package:hello_world_flutter/switch.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  bool isDarkTheme = false;
  MaterialColor bgColor = Colors.pink;
  String userName = 'Thiago Tesche';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Header(),
        ),
        body: ListView(
          children: <Widget>[
            Container(
                width: 10,
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                color: Colors.black,
                child: Row(
                  children: [
                    Text(
                      'Trocar cor de fundo:',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    CustomSwitch(),
                  ],
                ))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          tooltip: 'jojoo',
          child: Icon(Icons.add, size: 50, color: Colors.blue),
          onPressed: () {
            setState(() {
              counter++;

              isDarkTheme = !isDarkTheme;
            });
          },
        ),
        backgroundColor: bgColor,
        drawer: SideMenu());
  }
}
