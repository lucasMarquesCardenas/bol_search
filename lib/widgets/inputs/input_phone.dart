import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

// ignore: must_be_immutable
class InputPhone extends StatelessWidget {
  TextEditingController controller;
  double acima;
  double abaixo;
  double direita;
  double esquerda;

  InputPhone({
    this.controller,
    this.acima,
    this.abaixo,
    this.direita,
    this.esquerda,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: acima,
        bottom: abaixo,
        right: direita,
        left: esquerda,
      ),
      child: FormBuilderTextField(
        attribute: 'telefone',
        keyboardType: TextInputType.phone,
        inputFormatters: [
          FilteringTextInputFormatter.deny(RegExp(
              r"^\s*(\d{2}|\d{0})[-. ]?(\d{5}|\d{4})[-. ]?(\d{4})[-. ]?\s*$"))
        ],
        controller: controller,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          prefixIcon: Icon(Icons.phone_android),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(196),
          ),
          alignLabelWithHint: true,
          labelText: 'Telefone',
          labelStyle: TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
          hintText: 'Digite seu número de telefone',
          hintStyle: TextStyle(
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
