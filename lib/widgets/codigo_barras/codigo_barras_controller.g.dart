// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'codigo_barras_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CodigoBarrasController on _CodigoBarrasControllerBase, Store {
  final _$codigobarrasAtom =
      Atom(name: '_CodigoBarrasControllerBase.codigobarras');

  @override
  String get codigobarras {
    _$codigobarrasAtom.reportRead();
    return super.codigobarras;
  }

  @override
  set codigobarras(String value) {
    _$codigobarrasAtom.reportWrite(value, super.codigobarras, () {
      super.codigobarras = value;
    });
  }

  final _$_CodigoBarrasControllerBaseActionController =
      ActionController(name: '_CodigoBarrasControllerBase');

  @override
  dynamic setCode(String value) {
    final _$actionInfo = _$_CodigoBarrasControllerBaseActionController
        .startAction(name: '_CodigoBarrasControllerBase.setCode');
    try {
      return super.setCode(value);
    } finally {
      _$_CodigoBarrasControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
codigobarras: ${codigobarras}
    ''';
  }
}
