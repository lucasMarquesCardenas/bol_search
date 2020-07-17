import 'package:bemol_drogaria/App/app_controller.dart';
import 'package:bemol_drogaria/App/app_main.dart';
import 'package:bemol_drogaria/App/pages/Dashboard/dashboard_controller.dart';
import 'package:bemol_drogaria/App/pages/Dashboard/dashboard_main.dart';
import 'package:bemol_drogaria/App/pages/Dashboard/graficos/dashboard_graficos.dart';
import 'package:bemol_drogaria/App/pages/Login/login.dart';
import 'package:bemol_drogaria/App/pages/Login/login_controller.dart';
import 'package:bemol_drogaria/App/pages/test/test_controller.dart';
import 'package:bemol_drogaria/App/pages/test/test_page.dart';
import 'package:bemol_drogaria/Service/service.dart';
import 'package:bemol_drogaria/shared/repositories/user_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => DashboardController()),
        Bind((i) => Dio(BaseOptions(baseUrl: "http://192.168.1.6:5051/"))),
        Bind((i) => LoginController()),
        Bind((i) => UserRepository(i.get<Dio>())),
        Bind((i) => TestandoController(i.get<UserRepository>())),
      ];
  @override
  List<Router> get routers => [
        Router(
          '/',
          child: (context, args) => Login(),
        ),
        Router(
          '/test',
          child: (context, args) => Testando(),
        ),
      ];

  @override
  Widget get bootstrap => AppMainWidget();
}
