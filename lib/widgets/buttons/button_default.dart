import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonDefault extends StatefulWidget {
  String label;
  Color corDeTexto;
  Color corDoBotao;
  Function onPressed;
  double altura;
  double largura;
  IconData icon;

  @override
  _ButtonDefaultState createState() => _ButtonDefaultState();

  ButtonDefault(
    this.label, {
    this.altura,
    this.largura,
    this.corDeTexto,
    this.corDoBotao,
    this.onPressed,
    this.icon,
  });
}

class _ButtonDefaultState extends State<ButtonDefault> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.altura,
      width: widget.largura,
      child: RaisedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.label,
              style: TextStyle(
                color: widget.corDeTexto,
              ),
            ),
            Icon(
              widget.icon,
              color: Colors.white,
            ),
          ],
        ),
        onPressed: widget.onPressed,
        color: widget.corDoBotao,
      ),
    );
  }
}
