import 'dart:ui';

import 'package:flutter/material.dart';

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
  MaterialColor bgColor = Colors.blue;
  String userName = 'Thiago Tesche';

  void _closeDrawer() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
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
                  Switch(
                    value: isDarkTheme,
                    activeColor: bgColor,
                    onChanged: (value) {
                      setState(() {
                        isDarkTheme = value;
                        if (!isDarkTheme) {
                          bgColor = Colors.green;
                        } else {
                          bgColor = Colors.pink;
                        }
                      });
                    },
                  ),
                ],
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        tooltip: 'jojoo',
        child: Icon(Icons.add, size: 50),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
      backgroundColor: bgColor,
      drawer: Drawer(
        backgroundColor: Colors.lightGreen,
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsetsDirectional.fromSTEB(5, 10, 10, 10),
              color: Color.fromRGBO(206, 206, 206, 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.black,
                        child: Icon(Icons.person, size: 55),
                      ),
                      Text(
                        userName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {
                        print('pressionado');
                        _closeDrawer();
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Icon(
                            Icons.logout_rounded,
                            size: 40,
                          ),
                          Text(
                            'Sair',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
