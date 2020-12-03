import 'dart:ui';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonDashboard extends StatelessWidget {
  double altura;
  double largura;
  List<Color> cores = [];
  String nomeButton;
  IconData icon;
  VoidCallback onPressed;

  ButtonDashboard({
    this.altura,
    this.largura,
    this.cores,
    this.nomeButton,
    this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.blueAccent,
      textColor: Colors.white,
      splashColor: Colors.red,
      colorBrightness: Brightness.light,
      child: Container(
        height: altura,
        width: largura,
        margin: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 40,
                  color: Colors.white,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    nomeButton,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      onPressed: onPressed,
    );
  }
}
