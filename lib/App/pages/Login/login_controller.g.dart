// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginControllerBase, Store {
  final _$usuarioAtom = Atom(name: '_LoginControllerBase.usuario');

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

  final _$checkLoginAtom = Atom(name: '_LoginControllerBase.checkLogin');

  @override
  bool get checkLogin {
    _$checkLoginAtom.reportRead();
    return super.checkLogin;
  }

  @override
  set checkLogin(bool value) {
    _$checkLoginAtom.reportWrite(value, super.checkLogin, () {
      super.checkLogin = value;
    });
  }

  final _$_LoginControllerBaseActionController =
      ActionController(name: '_LoginControllerBase');

  @override
  dynamic login({Map<String, dynamic> list}) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.login');
    try {
      return super.login(list: list);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic responseCheck(dynamic usuario) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.responseCheck');
    try {
      return super.responseCheck(usuario);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
usuario: ${usuario},
checkLogin: ${checkLogin}
    ''';
  }
}
