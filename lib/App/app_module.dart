import 'package:bemol_drogaria/App/app_controller.dart';
import 'package:bemol_drogaria/App/app_main.dart';
import 'package:bemol_drogaria/App/pages/Dashboard/dashboard_controller.dart';
import 'package:bemol_drogaria/App/pages/Dashboard/dashboard_main.dart';
import 'package:bemol_drogaria/App/pages/Dashboard/graficos/dashboard_graficos.dart';
import 'package:bemol_drogaria/App/pages/Login/login.dart';
import 'package:bemol_drogaria/App/pages/Login/login_controller.dart';
import 'package:bemol_drogaria/App/pages/cadastro_usuario/cadastro_usuario.dart';
import 'package:bemol_drogaria/App/pages/cadastro_usuario/cadastro_usuario_controller.dart';
import 'package:bemol_drogaria/App/pages/test/test_controller.dart';
import 'package:bemol_drogaria/App/pages/test/test_page.dart';
import 'package:bemol_drogaria/Service/service.dart';
import 'package:bemol_drogaria/shared/repositories/user_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => DashboardController()),
        Bind((i) => Dio()),
        Bind((i) => CustomDio(i.get<Dio>())),
        Bind((i) => LoginController(i.get<UserRepository>())),
        Bind((i) => CadastroUsuarioController(i.get<UserRepository>())),
        Bind((i) => UserRepository(i.get<CustomDio>())),
        Bind((i) => TestandoController(i.get<UserRepository>())),
      ];
  @override
  List<Router> get routers => [
        Router(
          '/',
          child: (context, args) => Login(),
        ),
        Router(
          '/login',
          child: (context, args) => Login(),
        ),
        Router(
          '/cadastro',
          child: (context, args) => CadastroUsuario(),
        ),
        Router(
          '/dashboard',
          child: (context, args) => DashboardMain(),
        ),
        Router(
          '/test',
          child: (context, args) => Testando(),
        ),
      ];

  @override
  Widget get bootstrap => AppMainWidget();
}
