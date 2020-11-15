import 'package:flutter/material.dart';

class DrawerHeaderDefault extends StatefulWidget {
  @override
  _DrawerHeaderDefaultState createState() => _DrawerHeaderDefaultState();
}

class _DrawerHeaderDefaultState extends State<DrawerHeaderDefault> {
  String name = 'Lucas Marques Cardenas';

  String funcao = 'Administrador';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(padding: EdgeInsets.only(left: 20)),
        CircleAvatar(
          backgroundImage: AssetImage('images/user-profile.png'),
        ),
        Padding(padding: EdgeInsets.only(left: 20)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(color: Colors.white),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Text(
              funcao,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
