import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'button.dart';
import 'logo.dart';

class SMHomePage extends StatelessWidget {
  const SMHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        toolbarHeight: 40,
        title: Text(
          'Bom dia, Sua empresa!',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
      body: Column(
        children: <Widget>[
          Logo(),
          ButtonHomePage(title: 'Novas instalações', icon: Icons.note_add),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              ButtonHomePage(title: 'Clientes', icon: Icons.person),
              ButtonHomePage(
                  title: 'Veículos', icon: Icons.car_repair_outlined),
            ],
          ),
          ButtonHomePage(title: 'Credenciados', icon: Icons.store_rounded),
          ButtonHomePage(title: 'Equipamentos', icon: Icons.sim_card)
        ],
      ),
    );
  }
}
