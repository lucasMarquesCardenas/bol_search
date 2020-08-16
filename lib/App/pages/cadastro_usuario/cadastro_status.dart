import 'package:bemol_drogaria/App/pages/cadastro_usuario/cadastro_usuario_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Testando extends StatelessWidget {
  final cadastroController = Modular.get<CadastroUsuarioController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('eu sou eeeeknfkndka'),
      ),
      body: Observer(builder: (_) {
        if (cadastroController.usuario.error != null) {
          return Center(
            child: Text('erro'),
          );
        } else if (cadastroController.usuario.value == null) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Center(
            child: Text('Você foi cadastrado com sucesso!'),
          );
        }
      }),
    );
  }
}
