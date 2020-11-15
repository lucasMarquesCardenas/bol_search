import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class InputRadioGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FormBuilderRadioGroup(
        attribute: 'radio_group',
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          prefixIcon: Icon(Icons.accessibility),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          alignLabelWithHint: true,
          labelText: 'genero',
          labelStyle: TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
          hintText: 'Digite seu número de telefone',
          hintStyle: TextStyle(
            fontSize: 14,
          ),
        ),
        options: [
          FormBuilderFieldOption(value: 'M', child: Text('Masculino')),
          FormBuilderFieldOption(value: 'F', child: Text('Feminino')),
        ],
      ),
    );
  }
}
