import 'package:bemol_drogaria/widgets/codigo_barras/codigo_barras.dart';
import 'package:bemol_drogaria/widgets/codigo_barras/codigo_barras_controller.dart';
import 'package:bemol_drogaria/widgets/buttons/button_default.dart';
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
    return Container(
      height: 750,
      child: Card(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Icon(
              Icons.info,
              size: 50,
              color: Colors.blue,
            ),
            Text(
              'Para escanear aperte o botão Escanear codigo de barras',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              width: 240,
              height: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/codigo-barras-exemplo.png',
                    fit: BoxFit.scaleDown,
                  ),
                ],
              ),
            ),
            Observer(
              builder: (_) => codigoBarrasController != null
                  ? Text(
                      '${codigoBarrasController.codigobarras}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 25,
                      ),
                    )
                  : Text(
                      'Erro ao ler o código de barras',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            CodigoBarras(),
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            ButtonDefault(
              'Limpar código de barras',
              altura: 50,
              largura: 300,
              corDeTexto: Colors.white,
              corDoBotao: Colors.orange,
              onPressed: () => _cleanForm(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            ButtonDefault(
              'Cadastrar código de barras',
              altura: 50,
              largura: 300,
              corDeTexto: Colors.white,
              corDoBotao: Colors.blue,
              onPressed: () => _submitForm(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            ButtonDefault(
              'Cancelar cadastro',
              altura: 50,
              largura: 300,
              corDeTexto: Colors.white,
              corDoBotao: Colors.red,
              onPressed: () => {
                Navigator.of(context).pop(),
              },
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  void _submitForm() {
    // if (_fbKey.currentState.saveAndValidate()) {
    //   cadastroProdutoController.cadastraProduto(
    //       formlist: _fbKey.currentState.value);
    //   // _fbKey.currentState.reset();
    // }
  }

  void _cleanForm() {
    codigoBarrasController.codigobarras = '0000000000';
  }
}
