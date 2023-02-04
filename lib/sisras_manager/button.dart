import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButtonHomePage extends StatelessWidget {
  final String title;
  final IconData icon;

  const ButtonHomePage({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.all(15)),
            shadowColor: MaterialStateProperty.all(Colors.white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            )),
            backgroundColor:
                MaterialStateProperty.all(Color.fromRGBO(236, 236, 236, 1))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              icon,
              size: 34,
              color: Color.fromRGBO(51, 3, 0, 1),
            ),
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color.fromRGBO(51, 3, 0, 1)),
            )
          ],
        ),
      ),
    );
  }
}
