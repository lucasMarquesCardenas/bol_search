import 'package:bemol_drogaria/App/pages/buscas/busca_produtos/busca_produtos.dart';
import 'package:bemol_drogaria/App/pages/cadastros/cadastro_produtos/cadastro_produtos.dart';
import 'package:bemol_drogaria/widgets/buttons/button_dashboard.dart';
import 'package:bemol_drogaria/widgets/global_widget/nav.dart';
import 'package:flutter/material.dart';

class DashboardFuncoes extends StatefulWidget {
  @override
  _DashboardFuncoesState createState() => _DashboardFuncoesState();
}

class _DashboardFuncoesState extends State<DashboardFuncoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonDashboard(
                  altura: 120,
                  largura: 130,
                  cores: [
                    Colors.blue[800],
                    Colors.blue[700],
                    Colors.blue[300],
                    Colors.blue[300],
                  ],
                  icon: Icons.search,
                  nomeButton: 'Buscar \n produtos',
                  onPressed: () => {
                    push(
                      context,
                      BuscaProdutos(),
                    )
                  },
                ),
                ButtonDashboard(
                  altura: 120,
                  largura: 130,
                  cores: [
                    Colors.red[800],
                    Colors.red[700],
                    Colors.red[300],
                    Colors.red[300],
                  ],
                  icon: Icons.add_a_photo,
                  nomeButton: 'Cadastrar \n produtos',
                  onPressed: () => {
                    push(
                      context,
                      AdicionarProdutos(),
                    )
                  },
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonDashboard(
                    altura: 120,
                    largura: 130,
                    cores: [
                      Colors.red[800],
                      Colors.red[700],
                      Colors.red[300],
                      Colors.red[300],
                    ],
                    icon: Icons.assignment,
                    nomeButton: 'Relatórios',
                    onPressed: () => {
                      push(
                        context,
                        AdicionarProdutos(),
                      )
                    },
                  ),
                  ButtonDashboard(
                    altura: 120,
                    largura: 130,
                    cores: [
                      Colors.red[800],
                      Colors.red[700],
                      Colors.red[300],
                      Colors.red[300],
                    ],
                    icon: Icons.location_searching,
                    nomeButton: 'Logs',
                    onPressed: () => {
                      push(
                        context,
                        AdicionarProdutos(),
                      )
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
