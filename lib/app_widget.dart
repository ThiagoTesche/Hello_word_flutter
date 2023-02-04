import 'package:flutter/material.dart';
import 'package:hello_world_flutter/app_controlle.dart';
import 'package:hello_world_flutter/sisras_manager/sm__home_page.dart';

import 'clock_loader.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppControler.instance,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
                primarySwatch: Colors.green,
                brightness: AppControler.instance.isDarkTheme
                    ? Brightness.dark
                    : Brightness.light),
            home: SMHomePage(),
          );
        });
  }
}
