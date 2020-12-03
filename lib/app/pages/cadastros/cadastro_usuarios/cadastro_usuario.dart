import 'package:bemol_drogaria/App/pages/cadastros/cadastro_usuarios/cadastro_usuario_controller.dart';
import 'package:bemol_drogaria/App/pages/usuario/login/login.dart';
import 'package:bemol_drogaria/widgets/global_widget/nav.dart';
import 'package:bemol_drogaria/widgets/buttons/button_default.dart';
import 'package:bemol_drogaria/widgets/inputs/input_default.dart';
import 'package:bemol_drogaria/widgets/inputs/input_dropdown.dart';
import 'package:bemol_drogaria/widgets/inputs/input_phone.dart';
import 'package:bemol_drogaria/widgets/inputs/input_radio_group.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CadastroUsuario extends StatefulWidget {
  @override
  _CadastroUsuario createState() => _CadastroUsuario();
}

class _CadastroUsuario extends State<CadastroUsuario> {
  final cadastroController = Modular.get<CadastroUsuarioController>();

  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  var _nomeCompletoController = TextEditingController();

  var _nomeMaeController = TextEditingController();

  var _matriculaController = TextEditingController();

  var _cargoController = TextEditingController();

  var _dataNascimentoController = TextEditingController();

  var _emailController = TextEditingController();

  var _senhaController = TextEditingController();

  var _telefoneController = TextEditingController();

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
              Padding(padding: EdgeInsets.only(left: 20)),
              CircleAvatar(
                backgroundImage: AssetImage('images/user-profile.png'),
              ),
              Padding(padding: EdgeInsets.only(left: 20)),
              InputDefault(
                'Nome completo',
                'Insira seu nome completo',
                acima: 10,
                abaixo: 10,
                direita: 10,
                esquerda: 10,
                icon: Icon(Icons.person),
                controller: _nomeCompletoController,
                attributeName: "nomeCompleto",
              ),
              InputDefault(
                'Nome da mãe',
                'Insira nome da sua mãe',
                acima: 10,
                abaixo: 10,
                direita: 10,
                esquerda: 10,
                icon: Icon(Icons.face),
                controller: _nomeMaeController,
                attributeName: "nomeMae",
              ),
              InputDefault(
                'Matrícula',
                'Insira sua matrícula',
                acima: 10,
                abaixo: 10,
                direita: 10,
                esquerda: 10,
                icon: Icon(Icons.assignment_ind),
                controller: _matriculaController,
                attributeName: "matricula",
              ),
              InputDefault(
                'Cargo',
                'Insira seu cargo',
                acima: 10,
                abaixo: 10,
                direita: 10,
                esquerda: 10,
                icon: Icon(Icons.person),
                controller: _cargoController,
                attributeName: "cargo",
              ),
              InputDropDown('Cargo', 'Insira seu cargo'),
              InputDefault(
                'Data de nascimento',
                'Insira sua data de nascimento',
                acima: 10,
                abaixo: 10,
                direita: 10,
                esquerda: 10,
                icon: Icon(Icons.date_range),
                controller: _dataNascimentoController,
                attributeName: "dataNascimento",
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
                attributeName: "email",
              ),
              InputDefault(
                'Senha',
                'Insira sua senha',
                acima: 10,
                abaixo: 10,
                direita: 10,
                esquerda: 10,
                icon: Icon(Icons.dialpad),
                controller: _senhaController,
                attributeName: "senha",
              ),
              InputPhone(
                controller: _telefoneController,
                acima: 10,
                abaixo: 10,
                direita: 10,
                esquerda: 10,
              ),
              InputRadioGroup(),
              SizedBox(
                height: 20,
              ),
              ButtonDefault(
                'Cadastrar',
                altura: 40,
                largura: 300,
                corDeTexto: Colors.white,
                corDoBotao: Colors.blue,
                onPressed: () => _submit(),
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

  void _submit() {
    // if (_fbKey.currentState.saveAndValidate()) {
    //   cadastroController.cadastrar(list: _fbKey.currentState.value);

    //   _fbKey.currentState.reset();
    //   // push(context, Testando());
    // }
    _fbKey.currentState.save();
    cadastroController.cadastrar(list: _fbKey.currentState.value);

    // print(_fbKey.currentState.value);
  }
}
