import 'package:flutter/material.dart';

class DrawerHeaderDefault extends StatelessWidget {
  final IconData icone;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(32, 24, 16, 8),
      height: 180,
      decoration: BoxDecoration(color: Colors.blue),
      child: Column(
        children: <Widget>[
          Icon(icone),
        ],
      ),
    );
  }

  DrawerHeaderDefault({this.icone});
}
