import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class InputBusca extends StatefulWidget {
  String label;
  String hint;
  double acima;
  double abaixo;
  double direita;
  double esquerda;
  Icon icon;
  String attributeName;
  TextEditingController controller;
  List<FormFieldValidator> validator;
  @override
  _InputBuscaState createState() => _InputBuscaState();
  InputBusca(
    this.label,
    this.hint, {
    this.acima,
    this.abaixo,
    this.direita,
    this.esquerda,
    this.icon,
    this.controller,
    this.attributeName,
    this.validator,
  });
}

class _InputBuscaState extends State<InputBusca> {
  TextInputType keyboardType;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: widget.acima,
          bottom: widget.abaixo,
          right: widget.direita,
          left: widget.esquerda),
      child: FormBuilderTextField(
        attribute: widget.attributeName,
        validators: widget.validator,
        keyboardType: keyboardType,
        controller: widget.controller,
        decoration: InputDecoration(
          suffixIcon: widget.icon,
          fillColor: Colors.white,
          filled: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(196),
          ),
          alignLabelWithHint: true,
          labelText: widget.label,
          labelStyle: TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
          hintText: widget.hint,
          hintStyle: TextStyle(
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
