import 'dart:ui';

import 'package:bemol_drogaria/App/pages/cadastro_produtos/cadastro_produtos.dart';
import 'package:bemol_drogaria/App/pages/busca_produtos/busca_produtos.dart';
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
      body: Column(
        children: [
          Row(
            children: [
              FlatButton(
                child: Container(
                  height: 130,
                  width: 140,
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.blue[800],
                          Colors.blue[700],
                          Colors.blue[300],
                          Colors.blue[300],
                        ],
                      ),
                      borderRadius: BorderRadius.circular(50)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search,
                        size: 40,
                        color: Colors.white,
                      ),
                      Text(
                        'Buscar produtos',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                onPressed: () => {push(context, BuscaProdutos())},
              ),
              FlatButton(
                child: Container(
                  height: 150,
                  width: 150,
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.red[800],
                          Colors.red[700],
                          Colors.red[300],
                          Colors.red[300],
                        ],
                      ),
                      borderRadius: BorderRadius.circular(50)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_a_photo,
                        size: 40,
                        color: Colors.white,
                      ),
                      Text(
                        'cadastrar produtos',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                onPressed: () {
                  push(context, AdicionarProdutos());
                },
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 150,
                width: 150,
                margin: EdgeInsets.fromLTRB(20, 10, 10, 0),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue[800],
                        Colors.blue[700],
                        Colors.blue[300],
                        Colors.blue[300],
                      ],
                    ),
                    borderRadius: BorderRadius.circular(50)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.assignment,
                      size: 40,
                      color: Colors.white,
                    ),
                    Text(
                      'Relatórios',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                height: 150,
                width: 150,
                margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.red[800],
                        Colors.red[700],
                        Colors.red[300],
                        Colors.red[300],
                      ],
                    ),
                    borderRadius: BorderRadius.circular(50)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_searching,
                      size: 40,
                      color: Colors.white,
                    ),
                    Text(
                      'Logs',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
