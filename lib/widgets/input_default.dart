import 'package:flutter/material.dart';

class InputDefault extends StatelessWidget {
  String label;
  String hint;
  TextInputType keyboardType;
  double acima;
  double abaixo;
  double direita;
  double esquerda;
  Icon icon;
  FormFieldValidator<String> validator;
  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: acima, bottom: abaixo, right: direita, left: esquerda),
      child: TextFormField(
        validator: validator,
        keyboardType: keyboardType,
        controller: controller,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          prefixIcon: icon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(196),
          ),
          alignLabelWithHint: true,
          labelText: label,
          labelStyle: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
          hintText: hint,
          hintStyle: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  InputDefault(
    this.label,
    this.hint, {
    this.acima,
    this.abaixo,
    this.direita,
    this.esquerda,
    this.icon,
    this.validator,
    this.controller,
  });
}
