import 'package:bemol_drogaria/App/app_main.dart';
import 'package:bemol_drogaria/App/app_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  runApp(ModularApp(
    module: AppModule(),
  ));
}
