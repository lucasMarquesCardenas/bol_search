import 'package:bemol_drogaria/App/pages/test/test_page.dart';
import 'package:bemol_drogaria/Service/Usuario/service_usuario.dart';
import 'package:bemol_drogaria/Service/service.dart';
import 'package:bemol_drogaria/global_widget/nav.dart';
import 'package:bemol_drogaria/App/pages/Dashboard/dashboard_main.dart';
import 'package:bemol_drogaria/App/pages/cadastro_usuario/cadastro_usuario.dart';
import 'package:bemol_drogaria/widgets/button_default.dart';
import 'package:bemol_drogaria/widgets/input_default.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  var _emailController = TextEditingController();

  var _senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Container(
        padding: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              Image.asset(
                'images/Bemol-logo.png',
                alignment: Alignment.center,
              ),
              InputDefault(
                'E-mail',
                'Insira seu e-mail',
                acima: 60,
                abaixo: 10,
                direita: 10,
                esquerda: 10,
                icon: Icon(Icons.email),
                controller: _emailController,
                validator: (email) {
                  if (!EmailValidator.validate(email)) {
                    return 'E-mail inválido';
                  }

                  return null;
                },
              ),
              InputDefault(
                'Senha',
                'Insira sua senha',
                acima: 20,
                abaixo: 10,
                direita: 10,
                esquerda: 10,
                icon: Icon(Icons.dialpad),
                controller: _senhaController,
              ),
              FlatButton(
                child: Text(
                  'Esqueceu sua senha?',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                onPressed: () => {},
              ),
              SizedBox(
                height: 10,
              ),
              ButtonDefault('Entrar',
                  altura: 50,
                  largura: 300,
                  corDeTexto: Colors.white,
                  corDoBotao: Colors.blue,
                  onPressed: () => push(
                        context,
                        DashboardMain(),
                        replace: true,
                      )),
              SizedBox(
                height: 20,
              ),
              ButtonDefault(
                'Cadastrar',
                altura: 50,
                largura: 300,
                corDeTexto: Colors.white,
                corDoBotao: Colors.red,
                onPressed: () => {
                  push(
                    context,
                    CadastroUsuario(),
                  )
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void _onLogin() async {
    bool _formOk = _formKey.currentState.validate();

    if (!_formOk) {
      return;
    }

    String email = _emailController.text;
    String senha = _senhaController.text;

    print(email);
    print(senha);

    push(
      context,
      Testando(),
      replace: true,
    );
  }
}
