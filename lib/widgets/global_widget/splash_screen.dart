import 'package:bemol_drogaria/App/pages/usuario/login/login.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreenAddOn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new SplashScreen(
        seconds: 7,
        navigateAfterSeconds: new Login(),
        routeName: '/login',
        title: new Text(
          'Escolha com Confiança',
          style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.white,
          ),
        ),
        image: new Image.asset(
          'images/Bemol-logo.png',
          alignment: Alignment.center,
        ),
        backgroundColor: Colors.blue[600],
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        loaderColor: Colors.white,
      ),
    );
  }
}
