import 'package:bemol_drogaria/App/pages/test/test_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Testando extends StatelessWidget {
  final testandoController = Modular.get<TestandoController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('eu sou eeeeknfkndka'),
      ),
      body: Observer(builder: (_) {
        if (testandoController.usuario.error != null) {
          return Center(
            child: Text('erro'),
          );
        } else if (testandoController.usuario.value == null) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        var list = testandoController.usuario.value;

        return ListView.builder(
          itemCount: list.length,
          itemBuilder: (_, int index) {
            return ListTile(
              title: Text(list[index].email),
            );
          },
        );
      }),
    );
  }
}
