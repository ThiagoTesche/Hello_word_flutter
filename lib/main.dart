import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 128, 86, 86),
          title: Text('Pergunta App'),
        ),
        body: Center(
          child: Text('fppp'),
        ),
        backgroundColor: Colors.orange,
      ),
    );
  }
}
