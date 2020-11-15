import 'package:bemol_drogaria/App/pages/Dashboard/dashboard.dart';
import 'package:bemol_drogaria/App/pages/cadastros/cadastro_usuarios/cadastro_usuario.dart';
import 'package:bemol_drogaria/App/pages/usuario/login/login_controller.dart';
import 'package:bemol_drogaria/widgets/buttons/button_default.dart';
import 'package:bemol_drogaria/widgets/global_widget/nav.dart';
import 'package:bemol_drogaria/widgets/inputs/input_default.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final loginController = Modular.get<LoginController>();

  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  var _emailController = TextEditingController();

  var _senhaController = TextEditingController();

  @override
  void initState() {
    when((res) => loginController.usuario.value != null,
        () => {push(context, Dashboard())});
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Container(
        padding: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: FormBuilder(
          key: _fbKey,
          child: ListView(
            children: <Widget>[
              Image.asset(
                'images/Bemol-logo.png',
                alignment: Alignment.center,
              ),
              InputDefault(
                'E-mail',
                'Insira seu e-mail',
                acima: 40,
                abaixo: 10,
                direita: 10,
                esquerda: 10,
                icon: Icon(Icons.email),
                controller: _emailController,
                attributeName: 'email',
                validator: [
                  FormBuilderValidators.email(
                      errorText: 'Por favor! insira um e-mail valido.'),
                  FormBuilderValidators.required(
                      errorText: 'Campo está vazio! por favor preencher.'),
                ],
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
                attributeName: 'senha',
                validator: [
                  FormBuilderValidators.required(
                      errorText: 'Campo está vazio! por favor preencher.'),
                ],
              ),
              FlatButton(
                child: Text(
                  'Esqueceu sua senha?',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                onPressed: () => {
                  push(
                    context,
                    Dashboard(),
                  )
                },
              ),
              SizedBox(
                height: 10,
              ),
              ButtonDefault(
                'Entrar',
                altura: 50,
                largura: 300,
                corDeTexto: Colors.white,
                corDoBotao: Colors.blue,
                onPressed: () => _submitForm(),
              ),
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
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submitForm() {
    if (_fbKey.currentState.saveAndValidate()) {
      loginController.login(list: _fbKey.currentState.value);

      _fbKey.currentState.reset();
    }
  }
}
