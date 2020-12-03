import 'package:bemol_drogaria/app/pages/buscas/busca_produtos/busca_produto_list.dart';
import 'package:bemol_drogaria/widgets/buttons/button_default.dart';
import 'package:bemol_drogaria/widgets/inputs/input_busca.dart';
import 'package:flutter/material.dart';

class BuscaProdutoCard extends StatefulWidget {
  @override
  _BuscaProdutoCardState createState() => _BuscaProdutoCardState();
}

class _BuscaProdutoCardState extends State<BuscaProdutoCard> {
  final codBemol = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1200,
      child: Card(
        child: Column(
          children: [
            InputBusca(
              'Código bemol',
              'Digite o que deseja buscar',
              acima: 10,
              abaixo: 10,
              direita: 10,
              esquerda: 10,
              controller: codBemol,
              attributeName: 'codBemol',
              icon: Icon(Icons.search),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ButtonDefault(
                            'Filtros de busca',
                            corDeTexto: Colors.white,
                            corDoBotao: Colors.blue,
                            altura: 50,
                            largura: 220,
                            onPressed: _filtro,
                            icon: Icons.filter_alt,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // BuscaProdutoCard(),
          ],
        ),
      ),
    );
  }

  void _filtro() {}
}
