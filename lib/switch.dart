import 'package:flutter/material.dart';

import 'app_controlle.dart';
import 'home_page.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppControler.instance.isDarkTheme,
      activeColor: HomePageState().bgColor,
      onChanged: (value) {
        AppControler.instance.changeTheme();
      },
    );
  }
}
