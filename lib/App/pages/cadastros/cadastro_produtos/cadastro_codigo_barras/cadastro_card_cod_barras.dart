import 'package:bemol_drogaria/widgets/codigo_barras/codigo_barras.dart';
import 'package:bemol_drogaria/widgets/codigo_barras/codigo_barras_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CadastroCardCodBarras extends StatefulWidget {
  @override
  _CadastroCardCodBarrasState createState() => _CadastroCardCodBarrasState();
}

class _CadastroCardCodBarrasState extends State<CadastroCardCodBarras> {
  final codigoBarrasController = Modular.get<CodigoBarrasController>();
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          Image.asset(
            'images/codigo-barras-exemplo.png',
            fit: BoxFit.scaleDown,
          ),
          Observer(
            builder: (_) =>
              
              codigoBarrasController != null
                ? Text(
                  '${codigoBarrasController.codigobarras}',
                  style: const TextStyle(fontSize: 20),
                )
                : Text('Erro ao ler o código de barra')
          ),
          CodigoBarras()
        ],
      ),
    );
  }
}
