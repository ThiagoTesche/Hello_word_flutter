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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
      ),
      body: Center(
          child: GestureDetector(
        child: Center(
            child: Text(
          'Contador: $counter',
          style: TextStyle(fontSize: 25),
        )),
        onTap: () {
          setState(() {
            counter++;
          });
        },
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, size: 50),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
