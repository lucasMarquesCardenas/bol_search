import 'package:bemol_drogaria/App/pages/cadastros/cadastro_produtos/cadastro_produtos_controller.dart';
import 'package:bemol_drogaria/widgets/buttons/button_default.dart';
import 'package:bemol_drogaria/widgets/inputs/input_default.dart';
import 'package:bemol_drogaria/widgets/inputs/input_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CadastroAddProduto extends StatefulWidget {
  @override
  _CadastroAddProdutoState createState() => _CadastroAddProdutoState();
}

class _CadastroAddProdutoState extends State<CadastroAddProduto> {
  final cadastroProdutoController = Modular.get<CadastroProdutoController>();
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  final nomeProduto = TextEditingController();
  final subTitulo = TextEditingController();
  final codBemol = TextEditingController();
  final codBarras = TextEditingController();
  final tipoProduto = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FormBuilder(
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
              InputDropDown(
                'tipoProduto',
                'Tipo de produto',
                acima: 10,
                abaixo: 10,
                direita: 10,
                esquerda: 10,
                dataOptions: ['Remédio'],
                icon: Icon(Icons.view_column),
                validator: [
                  FormBuilderValidators.required(),
                ],
              ),
              InputDropDown(
                'unidade',
                'Unidade',
                acima: 10,
                abaixo: 10,
                direita: 10,
                esquerda: 10,
                dataOptions: ['Remédio'],
                icon: Icon(Icons.house),
                validator: [
                  FormBuilderValidators.required(),
                ],
              ),
              InputDropDown(
                'rua',
                'Rua',
                acima: 10,
                abaixo: 10,
                direita: 10,
                esquerda: 10,
                dataOptions: ['Remédio'],
                icon: Icon(Icons.streetview),
                validator: [
                  FormBuilderValidators.required(),
                ],
              ),
              InputDropDown(
                'prateleira',
                'Prateleira',
                acima: 10,
                abaixo: 10,
                direita: 10,
                esquerda: 10,
                dataOptions: ['Remédio'],
                icon: Icon(Icons.view_stream),
                validator: [
                  FormBuilderValidators.required(),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
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
                    onPressed: () => {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submitForm() {
    if (_fbKey.currentState.saveAndValidate()) {
      cadastroProdutoController.cadastraProduto(
          formlist: _fbKey.currentState.value);
      // _fbKey.currentState.reset();
    }
  }
}
