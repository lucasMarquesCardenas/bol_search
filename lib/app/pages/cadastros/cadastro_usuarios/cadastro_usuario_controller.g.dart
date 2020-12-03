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

  final _$unidadesAtom = Atom(name: '_CadastroUsuarioControllerBase.unidades');

  @override
  ObservableFuture<List<UnidadeModel>> get unidades {
    _$unidadesAtom.reportRead();
    return super.unidades;
  }

  @override
  set unidades(ObservableFuture<List<UnidadeModel>> value) {
    _$unidadesAtom.reportWrite(value, super.unidades, () {
      super.unidades = value;
    });
  }

  final _$generosAtom = Atom(name: '_CadastroUsuarioControllerBase.generos');

  @override
  ObservableFuture<List<GeneroModel>> get generos {
    _$generosAtom.reportRead();
    return super.generos;
  }

  @override
  set generos(ObservableFuture<List<GeneroModel>> value) {
    _$generosAtom.reportWrite(value, super.generos, () {
      super.generos = value;
    });
  }

  final _$cargosAtom = Atom(name: '_CadastroUsuarioControllerBase.cargos');

  @override
  ObservableFuture<List<CargoModel>> get cargos {
    _$cargosAtom.reportRead();
    return super.cargos;
  }

  @override
  set cargos(ObservableFuture<List<CargoModel>> value) {
    _$cargosAtom.reportWrite(value, super.cargos, () {
      super.cargos = value;
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
  dynamic listarUnidades() {
    final _$actionInfo = _$_CadastroUsuarioControllerBaseActionController
        .startAction(name: '_CadastroUsuarioControllerBase.listarUnidades');
    try {
      return super.listarUnidades();
    } finally {
      _$_CadastroUsuarioControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic listarGeneros() {
    final _$actionInfo = _$_CadastroUsuarioControllerBaseActionController
        .startAction(name: '_CadastroUsuarioControllerBase.listarGeneros');
    try {
      return super.listarGeneros();
    } finally {
      _$_CadastroUsuarioControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic listarCargos() {
    final _$actionInfo = _$_CadastroUsuarioControllerBaseActionController
        .startAction(name: '_CadastroUsuarioControllerBase.listarCargos');
    try {
      return super.listarCargos();
    } finally {
      _$_CadastroUsuarioControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
usuario: ${usuario},
unidades: ${unidades},
generos: ${generos},
cargos: ${cargos}
    ''';
  }
}
