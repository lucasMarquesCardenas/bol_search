import 'package:bemol_drogaria/App/pages/cadastro_produtos/adicionar_produtos_controller.dart';
import 'package:bemol_drogaria/widgets/codigo_barras/codigo_barras.dart';
import 'package:bemol_drogaria/widgets/input_default.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AdicionarProdutos extends StatefulWidget {
  @override
  _AdicionarProdutosState createState() => _AdicionarProdutosState();
}

class _AdicionarProdutosState extends State<AdicionarProdutos> {
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
      appBar: AppBar(
        title: Text('Adicionar produtos'),
      ),
      body: Container(
        child: FormBuilder(
          key: _fbKey,
          child: ListView(
            children: <Widget>[
              InputDefault(
                'Nome produto',
                'Insira o nome do produto',
                acima: 20,
                abaixo: 10,
                direita: 10,
                esquerda: 10,
                controller: nomeProduto,
                attributeName: 'nomeProduto',
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
            ],
          ),
        ),
      ),
    );
  }
}

codigoBarras() {
  CodigoBarras cod;

  
}
