import 'package:bemol_drogaria/App/pages/buscas/busca_produtos/busca_produtos.dart';
import 'package:bemol_drogaria/App/pages/cadastros/cadastro_produtos/cadastro_add_produto/cadastro_add_produto.dart';
// import 'package:bemol_drogaria/App/pages/cadastros/cadastro_produtos/cadastro_add_produto/cadastro_add_produto.dart';
import 'package:bemol_drogaria/App/pages/cadastros/cadastro_produtos/cadastro_codigo_barras/cadastro_codigo_barras.dart';
import 'package:bemol_drogaria/App/pages/cadastros/cadastro_produtos/cadastro_produtos_controller.dart';
import 'package:bemol_drogaria/widgets/buttons/button_dashboard.dart';
import 'package:bemol_drogaria/widgets/global_widget/nav.dart';
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
                title: Text(
                  'Gerenciamento de produtos',
                  textAlign: TextAlign.start,
                  textDirection: TextDirection.ltr,
                  textWidthBasis: TextWidthBasis.longestLine,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.add,
                    size: 100,
                    color: Colors.blue,
                  ),
                  Text(
                    'O que deseja fazer?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ButtonDashboard(
                          altura: 130,
                          largura: 140,
                          cores: [
                            Colors.blue[800],
                            Colors.blue[700],
                            Colors.blue[300],
                            Colors.blue[300],
                          ],
                          nomeButton: 'Cadastrar \n produto',
                          icon: Icons.add_a_photo,
                          onPressed: () {
                            push(context, CadastroAddProduto());
                          },
                        ),
                        ButtonDashboard(
                          altura: 130,
                          largura: 140,
                          cores: [
                            Colors.blue[800],
                            Colors.blue[700],
                            Colors.blue[300],
                            Colors.blue[300],
                          ],
                          nomeButton: 'Cadastrar \n código de barras',
                          icon: Icons.ac_unit,
                          onPressed: () {
                            push(
                              context,
                              CadastroCodigoBarras(),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ButtonDashboard(
                          altura: 130,
                          largura: 140,
                          cores: [
                            Colors.blue[800],
                            Colors.blue[700],
                            Colors.blue[300],
                            Colors.blue[300],
                          ],
                          nomeButton: 'Consultar',
                          icon: Icons.search,
                          onPressed: () {
                            push(
                              context,
                              BuscaProdutos(),
                            );
                          },
                        ),
                        ButtonDashboard(
                          altura: 130,
                          largura: 140,
                          cores: [
                            Colors.blue[800],
                            Colors.blue[700],
                            Colors.blue[300],
                            Colors.blue[300],
                          ],
                          nomeButton: 'Relatórios',
                          icon: Icons.assignment,
                          onPressed: () {
                            push(
                              context,
                              BuscaProdutos(),
                            );
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
