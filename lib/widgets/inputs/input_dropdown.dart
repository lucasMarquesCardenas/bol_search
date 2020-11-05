import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

// ignore: must_be_immutable
class InputDropDown extends StatefulWidget {
  @override
  _InputDropDownState createState() => _InputDropDownState();
  String attributeName;
  String title;
  double acima;
  double abaixo;
  double direita;
  double esquerda;
  Icon icon;
  List dataOptions = [];
  List<FormFieldValidator> validator;

  InputDropDown(
    this.attributeName,
    this.title, {
    this.acima,
    this.abaixo,
    this.direita,
    this.esquerda,
    this.dataOptions,
    this.validator,
    this.icon,
  });
}

class _InputDropDownState extends State<InputDropDown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: widget.acima,
          bottom: widget.abaixo,
          right: widget.direita,
          left: widget.esquerda),
      child: FormBuilderDropdown(
        isExpanded: true,
        attribute: widget.attributeName,
        hint: Text(widget.title),
        validators: widget.validator,
        items: widget.dataOptions
            .map((data) => DropdownMenuItem(
                  value: data,
                  child: Text('$data'),
                ))
            .toList(),
        allowClear: true,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          prefixIcon: widget.icon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(196),
          ),
          alignLabelWithHint: true,
          // labelText: widget.label,
          labelStyle: TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
