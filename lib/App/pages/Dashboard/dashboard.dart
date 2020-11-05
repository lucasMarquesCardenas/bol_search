import 'package:bemol_drogaria/App/pages/Dashboard/dashboard_main.dart';
import 'package:bemol_drogaria/widgets/drawer/drawer_custom.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerCustom(),
          DashboardMain(),
        ],
      ),
    );
  }
}
