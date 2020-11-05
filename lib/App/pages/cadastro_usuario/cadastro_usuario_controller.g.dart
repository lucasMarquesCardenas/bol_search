// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadastro_usuario_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CadastroUsuarioController on _CadastroUsuarioControllerBase, Store {
  final _$usuarioAtom = Atom(name: '_CadastroUsuarioControllerBase.usuario');

  @override
  ObservableFuture<List<UsuarioModel>> get usuario {
    _$usuarioAtom.reportRead();
    return super.usuario;
  }

  @override
  set usuario(ObservableFuture<List<UsuarioModel>> value) {
    _$usuarioAtom.reportWrite(value, super.usuario, () {
      super.usuario = value;
    });
  }

  final _$_CadastroUsuarioControllerBaseActionController =
      ActionController(name: '_CadastroUsuarioControllerBase');

  @override
  dynamic cadastrar({Map<String, dynamic> list}) {
    final _$actionInfo = _$_CadastroUsuarioControllerBaseActionController
        .startAction(name: '_CadastroUsuarioControllerBase.cadastrar');
    try {
      return super.cadastrar(list: list);
    } finally {
      _$_CadastroUsuarioControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
usuario: ${usuario}
    ''';
  }
}
