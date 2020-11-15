import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DrawerList extends StatelessWidget {
  final IconData icone;
  final String texto;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Row(
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
      ),
      onPressed: onPressed,
    );
  }

  DrawerList({
    this.icone,
    this.texto,
    this.onPressed,
  });
}
