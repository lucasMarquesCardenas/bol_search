import 'package:bemol_drogaria/App/pages/Login/login.dart';
import 'package:bemol_drogaria/global_widget/nav.dart';
import 'package:bemol_drogaria/widgets/button_default.dart';
import 'package:bemol_drogaria/widgets/input_default.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class CadastroUsuario extends StatefulWidget {
  @override
  _CadastroUsuario createState() => _CadastroUsuario();
}

class _CadastroUsuario extends State<CadastroUsuario> {
  final _formKey = GlobalKey<FormState>();

  var _nomeCompletoController = TextEditingController();

  var _nomeMaeController = TextEditingController();

  var _matriculaController = TextEditingController();

  var _emailController = TextEditingController();

  var _senhaController = TextEditingController();

  var _telefoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
      ),
      backgroundColor: Colors.lightBlue,
      body: Container(
        padding: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              InputDefault(
                'Nome',
                'Insira seu nome completo',
                acima: 10,
                abaixo: 10,
                direita: 10,
                esquerda: 10,
                icon: Icon(Icons.person),
                controller: _nomeCompletoController,
                validator: (email) {
                  if (!EmailValidator.validate(email)) {
                    return 'E-mail inválido';
                  }

                  return null;
                },
              ),
              InputDefault(
                'Nome da mãe',
                'Insira nome da sua mãe',
                acima: 10,
                abaixo: 10,
                direita: 10,
                esquerda: 10,
                icon: Icon(Icons.person),
                controller: _nomeMaeController,
                validator: (nomeMae) {
                  if (nomeMae.isEmpty) {
                    return 'Informação não informada!';
                  }

                  return null;
                },
              ),
              InputDefault(
                'Matrícula',
                'Insira sua matrícula',
                acima: 10,
                abaixo: 10,
                direita: 10,
                esquerda: 10,
                icon: Icon(Icons.person),
                controller: _matriculaController,
              ),
              InputDefault(
                'E-mail',
                'Insira seu e-mail',
                acima: 10,
                abaixo: 10,
                direita: 10,
                esquerda: 10,
                icon: Icon(Icons.email),
                controller: _emailController,
              ),
              InputDefault(
                'Senha',
                'Insira sua senha',
                acima: 10,
                abaixo: 20,
                direita: 10,
                esquerda: 10,
                icon: Icon(Icons.dialpad),
                controller: _senhaController,
              ),
              InputDefault(
                'Telefone',
                'Insira seu número de telefone',
                acima: 10,
                abaixo: 10,
                direita: 10,
                esquerda: 10,
                icon: Icon(Icons.call),
                controller: _telefoneController,
              ),
              SizedBox(
                height: 20,
              ),
              ButtonDefault(
                'Cadastrar',
                altura: 40,
                largura: 300,
                corDeTexto: Colors.white,
                corDoBotao: Colors.blue,
                onPressed: () => _onCadastro(),
              ),
              SizedBox(
                height: 20,
              ),
              ButtonDefault('Voltar',
                  altura: 40,
                  largura: 300,
                  corDeTexto: Colors.white,
                  corDoBotao: Colors.red,
                  onPressed: () => push(
                        context,
                        Login(),
                        replace: true,
                      )),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onCadastro() async {
    bool _formOk = _formKey.currentState.validate();

    if (!_formOk) {
      return;
    }
  }
}
