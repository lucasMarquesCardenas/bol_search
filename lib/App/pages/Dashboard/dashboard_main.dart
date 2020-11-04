import 'package:bemol_drogaria/app/pages/Dashboard/graficos/dashboard_graficos.dart';
import 'package:flutter/material.dart';

import 'dashboard_funcoes.dart';

class DashboardMain extends StatefulWidget {
  @override
  _DashboardMainState createState() => _DashboardMainState();
}

class _DashboardMainState extends State<DashboardMain> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();

  double x = 0;

  double y = 0;

  double scale = 1;

  bool openDrawer = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(x, y, 0)..scale(scale),
      duration: Duration(milliseconds: 250),
      color: Colors.red,
      child: Scaffold(
        backgroundColor: Colors.blue[200],
        key: _scaffoldKey,
        body: NestedScrollView(
          headerSliverBuilder: (context, condition) {
            return <Widget>[
              SliverAppBar(
                leading: openDrawer
                    ? IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: () {
                          setState(() {
                            x = 0;
                            y = 0;
                            scale = 1;
                            openDrawer = false;
                          });
                        },
                      )
                    : IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          setState(() {
                            x = 230;
                            y = 150;
                            scale = 0.6;
                            openDrawer = true;
                          });
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
              // DashboardGraficos(),
              DashboardFuncoes(),
            ],
          ),
        ),
      ),
    );
  }
}
