import 'package:bemol_drogaria/enums/dropdown_select.dart';
import 'package:bemol_drogaria/widgets/input_default.dart';
import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';

class AdicionarProdutos extends StatefulWidget {
  @override
  _AdicionarProdutosState createState() => _AdicionarProdutosState();
}

class _AdicionarProdutosState extends State<AdicionarProdutos> {
  final tiposDeProdutosSelected = TextEditingController();

  String selectTipo = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar produtos'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            InputDefault(
              'Nome produto',
              'Insira o nome do produto',
              acima: 20,
              abaixo: 10,
              direita: 10,
              esquerda: 10,
            ),
            InputDefault(
              'Subtítulo',
              'Insira o subtítulo',
              acima: 10,
              abaixo: 10,
              direita: 10,
              esquerda: 10,
            ),
            InputDefault(
              'Código bemol',
              'Insira o código bemol',
              acima: 10,
              abaixo: 10,
              direita: 10,
              esquerda: 10,
            ),
            InputDefault(
              'Código de barras',
              'Insira o código de barras',
              acima: 10,
              abaixo: 10,
              direita: 10,
              esquerda: 10,
            ),
            DropDownField(
              controller: tiposDeProdutosSelected,
              hintText: 'Selecione tipo de produto',
              enabled: true,
              items: tiposDeProdutos,
              onValueChanged: (value) {
                setState(() {
                  selectTipo = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

List<String> tiposDeProdutos = ["Remédio", "Perfumaria"];
