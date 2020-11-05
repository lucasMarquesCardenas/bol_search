import 'package:bemol_drogaria/App/app_controller.dart';
import 'package:bemol_drogaria/App/app_main.dart';
import 'package:bemol_drogaria/App/pages/Dashboard/dashboard.dart';
import 'package:bemol_drogaria/App/pages/Dashboard/dashboard_controller.dart';
import 'package:bemol_drogaria/App/pages/Login/login.dart';
import 'package:bemol_drogaria/App/pages/Login/login_controller.dart';
import 'package:bemol_drogaria/App/pages/cadastro_produtos/cadastro_produtos_controller.dart';
import 'package:bemol_drogaria/App/pages/cadastro_usuario/cadastro_usuario.dart';
import 'package:bemol_drogaria/App/pages/cadastro_usuario/cadastro_usuario_controller.dart';
import 'package:bemol_drogaria/Service/service.dart';
import 'package:bemol_drogaria/shared/repositories/produto_repository.dart';
import 'package:bemol_drogaria/shared/repositories/user_repository.dart';
import 'package:bemol_drogaria/widgets/codigo_barras/codigo_barras.dart';
import 'package:bemol_drogaria/widgets/codigo_barras/codigo_barras_controller.dart';
import 'package:bemol_drogaria/widgets/drawer/drawer_custom.dart';
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
        Bind((i) => CadastroProdutoController(i.get<ProdutoRepository>())),
        Bind((i) => CodigoBarrasController()),
        Bind((i) => UserRepository(i.get<CustomDio>())),
        Bind((i) => ProdutoRepository(i.get<CustomDio>())),
      ];
  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          '/',
          child: (context, args) => Dashboard(),
        ),
        ModularRouter(
          '/login',
          child: (context, args) => Login(),
        ),
        ModularRouter(
          '/cadastro',
          child: (context, args) => CadastroUsuario(),
        ),
        ModularRouter(
          '/dashboard',
          child: (context, args) => Dashboard(),
        ),
        ModularRouter(
          '/drawer',
          child: (context, args) => DrawerCustom(),
        ),
        ModularRouter(
          '/codigo_barras',
          child: (context, args) => CodigoBarras(),
        ),
      ];

  @override
  Widget get bootstrap => AppMainWidget();
}
