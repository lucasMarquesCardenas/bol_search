import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  final IconData icone;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Icon(
            icone,
            size: 30,
            color: Colors.white,
          ),
        ),
        Text(
          texto,
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
      ],
    );
  }

  DrawerList({this.icone, this.texto});
}
