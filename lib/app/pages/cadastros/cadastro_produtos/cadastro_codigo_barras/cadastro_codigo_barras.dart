import 'package:bemol_drogaria/App/pages/cadastros/cadastro_produtos/cadastro_codigo_barras/cadastro_input_cod_barras.dart';
import 'package:flutter/material.dart';

class CadastroCodigoBarras extends StatefulWidget {
  @override
  _CadastroCodigoBarrasState createState() => _CadastroCodigoBarrasState();
}

class _CadastroCodigoBarrasState extends State<CadastroCodigoBarras> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, condition) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 300,
              floating: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'images/codigo-barras.jpg',
                  fit: BoxFit.cover,
                ),
                centerTitle: true,
                title: Text(
                  'Código de barras',
                  textAlign: TextAlign.start,
                  textDirection: TextDirection.ltr,
                  textWidthBasis: TextWidthBasis.longestLine,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          ];
        },
        body: Stack(
          children: [
            CadastroInputCodBarras(),
          ],
        ),
      ),
    );
  }
}
