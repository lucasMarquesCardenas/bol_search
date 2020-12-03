import 'package:bemol_drogaria/App/pages/cadastros/cadastro_produtos/cadastro_codigo_barras/cadastro_card_cod_barras.dart';
import 'package:bemol_drogaria/widgets/inputs/input_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CadastroInputCodBarras extends StatelessWidget {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[300],
      child: FormBuilder(
        key: _fbKey,
        child: ListView(
          children: [
            Center(
              child: Column(
                children: [
                  Text(
                    'Informe os dados para cadastro.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Icon(
                    Icons.info,
                    size: 80,
                    color: Colors.white,
                  ),
                  Text(
                    'Observação: Informe atentamente os dados.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            InputDropDown(
              'produto',
              'Selecione o produto',
              acima: 10,
              abaixo: 10,
              direita: 10,
              esquerda: 10,
              dataOptions: ['Shampoo'],
              icon: Icon(Icons.view_column),
              validator: [
                FormBuilderValidators.required(),
              ],
            ),
            CadastroCardCodBarras(),
          ],
        ),
      ),
    );
  }
}
