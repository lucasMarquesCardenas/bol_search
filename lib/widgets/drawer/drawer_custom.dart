import 'package:bemol_drogaria/widgets/drawer/drawer_header.dart';
import 'package:bemol_drogaria/widgets/drawer/drawer_list.dart';
import 'package:flutter/material.dart';

class DrawerCustom extends StatefulWidget {
  @override
  _DrawerCustomState createState() => _DrawerCustomState();
}

class _DrawerCustomState extends State<DrawerCustom> {
  
  @override
  Widget build(BuildContext context) {

    
    return Container(
      padding: EdgeInsets.only(top: 70),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue[500],
            Colors.blue[400],
            Colors.blue[300],
            Colors.blue[100],
          ],
        ),
      ),
      child: Column(
        children: [
          DrawerHeaderDefault(),
          Padding(
            padding: EdgeInsets.only(top: 50),
          ),
          Column(
            children: [
              DrawerList(
                icone: Icons.person,
                texto: 'Perfil',
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
        ],
      ),
    );
  }
}

// child: ListView(
//           children: <Widget>[
//             DrawerHeaderDefault(),
//             DrawerList(
//               icone: Icons.home,
//               texto: 'Início',
//             ),
//             DrawerList(
//               icone: Icons.search,
//               texto: 'Buscar Produtos',
//             ),
//             DrawerList(
//               icone: Icons.storage,
//               texto: 'Estoque',
//             ),
//             DrawerList(
//               icone: Icons.settings,
//               texto: 'Configurações',
//             ),
//             DrawerList(
//               icone: Icons.exit_to_app,
//               texto: 'Sair',
//             ),
//           ],
//         ),
