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
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Container(
        height: altura,
        width: largura,
        margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: cores,
            ),
            borderRadius: BorderRadius.circular(50)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40,
              color: Colors.white,
            ),
            Text(
              nomeButton,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      onPressed: onPressed,
    );
  }
}
