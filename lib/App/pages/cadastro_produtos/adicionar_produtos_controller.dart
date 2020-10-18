import 'package:bemol_drogaria/shared/repositories/produto_repository.dart';
import 'package:mobx/mobx.dart';
part 'adicionar_produtos_controller.g.dart';

class CadastroProdutoController = _CadastroProdutoControllerBase
    with _$CadastroProdutoController;

abstract class _CadastroProdutoControllerBase with Store {
  ProdutoRepository repository;
   _CadastroProdutoControllerBase(this.repository);
   
}
