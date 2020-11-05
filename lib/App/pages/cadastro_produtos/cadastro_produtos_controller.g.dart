// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadastro_produtos_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CadastroProdutoController on _CadastroProdutoControllerBase, Store {
  final _$produtoAtom = Atom(name: '_CadastroProdutoControllerBase.produto');

  @override
  ObservableFuture<List<ProdutoModel>> get produto {
    _$produtoAtom.reportRead();
    return super.produto;
  }

  @override
  set produto(ObservableFuture<List<ProdutoModel>> value) {
    _$produtoAtom.reportWrite(value, super.produto, () {
      super.produto = value;
    });
  }

  final _$_CadastroProdutoControllerBaseActionController =
      ActionController(name: '_CadastroProdutoControllerBase');

  @override
  dynamic cadastraProduto({Map<String, dynamic> formlist}) {
    final _$actionInfo = _$_CadastroProdutoControllerBaseActionController
        .startAction(name: '_CadastroProdutoControllerBase.cadastraProduto');
    try {
      return super.cadastraProduto(formlist: formlist);
    } finally {
      _$_CadastroProdutoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
produto: ${produto}
    ''';
  }
}
