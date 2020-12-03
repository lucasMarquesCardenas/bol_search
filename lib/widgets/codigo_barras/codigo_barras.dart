import 'package:barras/barras.dart';
import 'package:bemol_drogaria/widgets/buttons/button_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'codigo_barras_controller.dart';

class CodigoBarras extends StatefulWidget {
  @override
  _CodigoBarrasState createState() => _CodigoBarrasState();
}

class _CodigoBarrasState extends State<CodigoBarras> {
  final codigoBarrasController = Modular.get<CodigoBarrasController>();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.blueAccent,
      textColor: Colors.white,
      splashColor: Colors.red,
      colorBrightness: Brightness.light,
      child: Container(
        height: 120,
        width: 150,
        margin: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.scanner,
                  size: 40,
                  color: Colors.white,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    'Escanear \n codigo de barras',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      onPressed: () async {
        final data = await Barras.scan(
          context,
          viewfinderHeight: 120,
          viewfinderWidth: 200,
          scrimColor: Color.fromRGBO(128, 0, 0, 0.5),
          borderColor: Colors.red,
          borderRadius: 24,
          borderStrokeWidth: 2,
          buttonColor: Colors.yellow,
          borderFlashDuration: 250,
          cancelButtonText: "Cancelar",
          successBeep: true,
        );
        codigoBarrasController.setCode(data);
      },
    );
  }

  // Widget _buildBarcodeLabel() {
  //   return Container(
  //     decoration: BoxDecoration(
  //       border: Border.all(color: Colors.deepPurple),
  //       borderRadius: BorderRadius.circular(16.0),
  //     ),
  //     height: 48.0,
  //     padding: EdgeInsets.all(16.0),
  //     margin: EdgeInsets.only(bottom: 8.0),
  //     child: Text(
  //       _scannedCode,
  //       textAlign: TextAlign.center,
  //     ),
  //   );
  // }

  // Widget _buildDefaultScanButton(BuildContext context) {
  //   return RaisedButton(
  //     color: Colors.blueAccent,
  //     textColor: Colors.white,
  //     onPressed: () async {
  //       // Open the barcode reading page. Returned data will be null if
  //       // Cancel button is pressed, or if user navigates back
  //       final data = await Barras.scan(context);

  //       setState(() {
  //         _scannedCode = data ?? "";
  //       });
  //     },
  //     child: Text('OPEN DEFAULT SCANNER'),
  //   );
  // }

  // Widget _buildCustomScanButton(BuildContext context) {
  //   return RaisedButton(
  //     color: Colors.deepPurple,
  //     textColor: Colors.white,
  //     onPressed: () async {
  //       // Open the barcode reading page. Customize the appearance, changing the
  //       // viewfinder color, size and blinking speed. Returned data will be null
  //       // if Cancel button is pressed, or if user navigates back
  //       final data = await Barras.scan(
  //         context,
  //         viewfinderHeight: 120,
  //         viewfinderWidth: 200,
  //         scrimColor: Color.fromRGBO(128, 0, 0, 0.5),
  //         borderColor: Colors.red,
  //         borderRadius: 24,
  //         borderStrokeWidth: 2,
  //         buttonColor: Colors.yellow,
  //         borderFlashDuration: 250,
  //         cancelButtonText: "Cancelar",
  //         successBeep: true,
  //       );

  //       setState(() {
  //         _scannedCode = data ?? "";
  //       });
  //     },
  //     child: Text('OPEN CUSTOMIZED SCANNER'),
  //   );
  // }
}
