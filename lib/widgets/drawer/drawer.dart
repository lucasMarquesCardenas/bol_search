import 'package:bemol_drogaria/widgets/drawer/drawer_header.dart';
import 'package:bemol_drogaria/widgets/drawer/drawer_list.dart';
import 'package:flutter/material.dart';

class DrawerCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeaderDefault(
            icone: Icons.person,
          ),
          DrawerList(
            icone: Icons.home,
            texto: 'Início',
          ),
          DrawerList(
            icone: Icons.search,
            texto: 'Buscar Produtos',
          ),
          DrawerList(
            icone: Icons.storage,
            texto: 'Estoque',
          ),
          DrawerList(
            icone: Icons.settings,
            texto: 'Configurações',
          ),
          DrawerList(
            icone: Icons.exit_to_app,
            texto: 'Sair',
          ),
        ],
      ),
    );
  }
}
