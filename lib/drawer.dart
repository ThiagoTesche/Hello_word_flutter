import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hello_world_flutter/switch.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _closeDrawer() {
      Navigator.of(context).pop();
    }

    return Drawer(
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
                      'userName',
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
          CustomSwitch()
        ],
      ),
    );
  }
}
