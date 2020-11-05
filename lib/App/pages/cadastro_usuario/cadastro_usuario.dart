import 'package:bemol_drogaria/App/pages/Login/login.dart';
import 'package:bemol_drogaria/App/pages/cadastro_usuario/cadastro_usuario_controller.dart';
import 'package:bemol_drogaria/widgets/global_widget/nav.dart';
import 'package:bemol_drogaria/widgets/buttons/button_default.dart';
import 'package:bemol_drogaria/widgets/inputs/input_default.dart';
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

  var _funcaoController = TextEditingController();

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
                'Função',
                'Insira sua função',
                acima: 10,
                abaixo: 10,
                direita: 10,
                esquerda: 10,
                icon: Icon(Icons.person),
                controller: _funcaoController,
                attributeName: "funcao",
              ),
              // FormBuilderDateRangePicker(
              //   attribute: 'dateNascimento',
              //   firstDate: DateTime(1997),
              //   lastDate: DateTime.now(),
              //   initialValue: [
              //     DateTime.now().subtract(Duration(days: 30)),
              //     DateTime.now().subtract(Duration(seconds: 10))
              //   ],
              //   decoration: const InputDecoration(
              //     labelText: 'Date Range',
              //     helperText: 'Helper text',
              //     hintText: 'Hint text',
              //   ), format: null,
              // ),
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
                abaixo: 20,
                direita: 10,
                esquerda: 10,
                icon: Icon(Icons.dialpad),
                controller: _senhaController,
                attributeName: "senha",
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
                attributeName: "telefone",
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
