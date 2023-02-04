import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        width: 220,
        height: 100,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Color.fromRGBO(236, 236, 236, 1),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Image.asset(
          'images/suaempresalogo.jpg',
          width: 60,
        ),
      ),
    );
  }
}
