import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;

  const Header({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
            color: Colors.green, fontSize: 12, fontStyle: FontStyle.italic),
      ),
      actions: <Widget>[
        IconButton(
            onPressed: () {
              print('Menu aberto');
            },
            icon: Icon(Icons.menu))
      ],
    );
  }
}
