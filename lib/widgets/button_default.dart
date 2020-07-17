import 'package:flutter/material.dart';

class ButtonDefault extends StatelessWidget {
  String label;
  Color corDeTexto;
  Color corDoBotao;
  Function onPressed;
  double altura;
  double largura;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: altura,
      width: largura,
      child: RaisedButton(
        child: Text(
          label,
          style: TextStyle(
            color: corDeTexto,
          ),
        ),
        onPressed: onPressed,
        color: corDoBotao,
      ),
    );
  }

  ButtonDefault(
    this.label, {
    this.altura,
    this.largura,
    this.corDeTexto,
    this.corDoBotao,
    this.onPressed,
  });
}
