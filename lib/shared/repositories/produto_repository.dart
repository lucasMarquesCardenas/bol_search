import 'package:bemol_drogaria/shared/models/produto.dart';
import 'package:dio/dio.dart';

class ProdutoRepository {
  final Dio dio;

  ProdutoRepository(this.dio);

  Future<List<ProdutoModel>> getAllProducts() async {
    var response = await dio.request("/listar_all_produtos",
        options: Options(
          headers: {"Content-Type": "application/json"},
        ));
    List<ProdutoModel> list = [];
    for (var json in (response.data[0] as List)) {
      ProdutoModel model = ProdutoModel();
      list.add(model);
    }

    return list;
  }

  Future<List<ProdutoModel>> getOneProduct() async {
    var response = await dio.request("/listar_produto",
        options: Options(
          headers: {"Content-Type": "application/json"},
        ));
    List<ProdutoModel> list = [];
    for (var json in (response.data[0] as List)) {
      ProdutoModel model = ProdutoModel();
      list.add(model);
    }

    return list;
  }

  Future<List<ProdutoModel>> postProducts() async {
    var response = await dio.request("/cadastrar_produto",
        options: Options(
          headers: {"Content-Type": "application/json"},
        ));
    List<ProdutoModel> list = [];
    for (var json in (response.data[0] as List)) {
      ProdutoModel model = ProdutoModel();
      list.add(model);
    }

    return list;
  }
}