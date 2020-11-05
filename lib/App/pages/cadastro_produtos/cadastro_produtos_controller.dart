import 'package:bemol_drogaria/shared/repositories/produto_repository.dart';
import 'package:bemol_drogaria/shared/models/produto.dart';
import 'package:mobx/mobx.dart';
part 'cadastro_produtos_controller.g.dart';

class CadastroProdutoController = _CadastroProdutoControllerBase
    with _$CadastroProdutoController;

abstract class _CadastroProdutoControllerBase with Store {
  ProdutoRepository repository;
  _CadastroProdutoControllerBase(this.repository);

  @observable
  ObservableFuture<List<ProdutoModel>> produto;

  @action
  cadastraProduto({Map<String, dynamic> formlist}) {
    produto = repository.cadastrarProduto(formlist).asObservable();
  }
}
