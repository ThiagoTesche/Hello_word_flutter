import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title = 'Hover';

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
            color: Colors.green, fontSize: 12, fontStyle: FontStyle.italic),
      ),
      actions: <Widget>[
        IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios))
      ],
    );
  }
}
