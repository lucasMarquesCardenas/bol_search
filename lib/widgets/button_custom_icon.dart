import 'package:flutter/material.dart';

class ButtonCustomIcon extends StatelessWidget {
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
      color: corDoBotao,
      padding: EdgeInsets.all(5),
      child: SizedBox.expand(
        child: FlatButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                Icons.add,
                color: Colors.white,
                size: 40,
              ),
              FlatButton(
                onPressed: () {  },
                child: Text(
                  label,
                  style: TextStyle(
                    color: corDeTexto,
                  ),
                ),
              ),
            ],
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }

  ButtonCustomIcon(
    this.label, {
    this.altura,
    this.largura,
    this.corDeTexto,
    this.corDoBotao,
    this.onPressed,
  });
}
