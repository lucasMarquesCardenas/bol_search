import 'package:flutter/material.dart';

class DashboardGraficos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _screenHeigth = MediaQuery.of(context).size.height;

    return Positioned(
      top: 0,
      height: _screenHeigth * .60,
      left: 0,
      right: 0,
      child: PageView(
        children: <Widget>[
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
