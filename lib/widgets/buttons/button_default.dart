import 'package:flutter/material.dart';

class ButtonDefault extends StatefulWidget {
  String label;
  Color corDeTexto;
  Color corDoBotao;
  Function onPressed;
  double altura;
  double largura;

  @override
  _ButtonDefaultState createState() => _ButtonDefaultState();

  ButtonDefault(
    this.label, {
    this.altura,
    this.largura,
    this.corDeTexto,
    this.corDoBotao,
    this.onPressed,
  });
}

class _ButtonDefaultState extends State<ButtonDefault> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.altura,
      width: widget.largura,
      child: RaisedButton(
        child: Text(
          widget.label,
          style: TextStyle(
            color: widget.corDeTexto,
          ),
        ),
        onPressed: widget.onPressed,
        color: widget.corDoBotao,
      ),
    );
  }
}
