import 'package:bemol_drogaria/global_widget/nav.dart';
import 'package:bemol_drogaria/app/pages/Dashboard/graficos/dashboard_graficos.dart';
import 'package:bemol_drogaria/app/pages/cadastro_produtos/adicionar_produtos.dart';
import 'package:bemol_drogaria/widgets/button_custom_icon.dart';
import 'package:bemol_drogaria/widgets/drawer/drawer.dart';
import 'package:flutter/material.dart';

class DashboardMain extends StatelessWidget {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: DrawerCustom(),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, condition) {
          return <Widget>[
            SliverAppBar(
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  _scaffoldKey.currentState.openDrawer();
                },
              ),
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                background: new Image.asset(
                  'images/estoque.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: Stack(
          children: <Widget>[
            DashboardGraficos(),
          ],
        ),
      ),
    );
  }
}

//  Container(
//             color: Colors.lightBlueAccent,
//             padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
//             child: Container(
//               child: Row(
//                 children: <Widget>[
//                   Text(
//                     'Detalhes',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(color: Colors.white, fontSize: 22),
//                   ),
//                   Row(
//                     children: <Widget>[
//                       ButtonCustomIcon(
//                         'Adicionar produtos',
//                         altura: 100,
//                         largura: 300,
//                         corDeTexto: Colors.white,
//                         corDoBotao: Colors.red,
//                         onPressed: () {
//                           push(context, AdicionarProdutos());
//                         },
//                       )
//                     ],
//                   )
//                 ],
//               ),
//             )),
