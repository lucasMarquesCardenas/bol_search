import 'package:bemol_drogaria/App/pages/cadastro_produtos/cadastro_produtos_controller.dart';
import 'package:bemol_drogaria/App/pages/cadastro_produtos/cadastro_inputs/cadastro_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AdicionarProdutos extends StatefulWidget {
  @override
  _AdicionarProdutosState createState() => _AdicionarProdutosState();
}

class _AdicionarProdutosState extends State<AdicionarProdutos> {
  final cadastroProdutoController = Modular.get<CadastroProdutoController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, condition) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 300,
              floating: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'images/estoque-cadastro.jpg',
                  fit: BoxFit.cover,
                ),
                centerTitle: true,
                title: Text('Cadastrar produto'),
              ),
            ),
          ];
        },
        body: Stack(
          children: [
            CadastroInputs(),
          ],
        ),
      ),
    );
  }
}
