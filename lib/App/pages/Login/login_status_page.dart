import 'package:bemol_drogaria/App/pages/Dashboard/dashboard_main.dart';
import 'package:bemol_drogaria/widgets/global_widget/nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'login_controller.dart';

class LoginStatus extends StatelessWidget {
  final loginController = Modular.get<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(builder: (_) {
        if (loginController.usuario.error != null) {
          return Center(
            child: Text('erro'),
          );
        } else if (loginController.usuario.value == null) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          push(context, DashboardMain());
        }
      }),
    );
  }
}
