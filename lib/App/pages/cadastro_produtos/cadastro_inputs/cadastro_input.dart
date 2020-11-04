import 'package:bemol_drogaria/widgets/buttons/button_default.dart';
import 'package:bemol_drogaria/widgets/codigo_barras/codigo_barras.dart';
import 'package:bemol_drogaria/widgets/inputs/input_default.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CadastroInputs extends StatefulWidget {
  @override
  _CadastroInputsState createState() => _CadastroInputsState();
}

class _CadastroInputsState extends State<CadastroInputs> {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  final nomeProduto = TextEditingController();
  final subTitulo = TextEditingController();
  final codBemol = TextEditingController();
  final codBarras = TextEditingController();
  final tipoProduto = TextEditingController();
  var genderOptions = ['Male', 'Female', 'Other'];

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _fbKey,
      child: ListView(
        children: <Widget>[
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
                  color: Colors.blue,
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
          InputDefault(
            'Nome do produto',
            'Insira o nome do produto',
            acima: 20,
            abaixo: 10,
            direita: 10,
            esquerda: 10,
            controller: nomeProduto,
            attributeName: 'nomeProduto',
            icon: Icon(Icons.description),
          ),
          InputDefault(
            'Subtítulo',
            'Insira o subtítulo',
            acima: 10,
            abaixo: 10,
            direita: 10,
            esquerda: 10,
            controller: subTitulo,
            attributeName: 'subTitulo',
            icon: Icon(Icons.subtitles),
          ),
          InputDefault(
            'Código bemol',
            'Insira o código bemol',
            acima: 10,
            abaixo: 10,
            direita: 10,
            esquerda: 10,
            controller: codBemol,
            attributeName: 'codBemol',
            icon: Icon(Icons.format_list_numbered),
          ),
          CodigoBarras(),
          InputDefault(
            'Código de barras',
            'Insira o código de barras',
            acima: 10,
            abaixo: 10,
            direita: 10,
            esquerda: 10,
            controller: codBarras,
            attributeName: 'codBarras',
          ),
          FormBuilderDropdown(
            attribute: 'coluna',
            hint: Text('Select Gender'),
            validators: [
              FormBuilderValidators.required(),
            ],
            items: genderOptions
                .map((gender) => DropdownMenuItem(
                      value: gender,
                      child: Text('$gender'),
                    ))
                .toList(),
            allowClear: true,
          ),
          SizedBox(
            height: 20,
          ),
          ButtonDefault(
            'Confirmar cadastro',
            altura: 50,
            largura: 300,
            corDeTexto: Colors.white,
            corDoBotao: Colors.blue,
            onPressed: () => _submitForm(),
          ),
          SizedBox(
            height: 20,
          ),
          ButtonDefault(
            'Cancelar cadastro',
            altura: 50,
            largura: 300,
            corDeTexto: Colors.white,
            corDoBotao: Colors.red,
            onPressed: () => _submitForm(),
          ),
        ],
      ),
    );
  }

  void _submitForm() {
    if (_fbKey.currentState.saveAndValidate()) {
      // _fbKey.currentState.reset();
    }
  }
}
