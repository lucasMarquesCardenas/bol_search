import 'dart:convert';
import 'package:bemol_drogaria/Service/service.dart';
import 'package:bemol_drogaria/shared/models/produto.dart';
import 'package:dio/dio.dart';

class ProdutoRepository {
   final CustomDio dio;

  ProdutoRepository(this.dio);

  Future<List<ProdutoModel>> getAllProducts() async {
    List<ProdutoModel> convertList = [];

    // var response = await dio.request("/listar",
    //     options: Options(
    //       headers: {"Content-Type": "application/json"},
    //     ));

    // if (response.data == "") {
    //   print(response.statusCode);
    //   convertList = null;
    // } else {
    //   final jsonMap = json.decode(response.data);
    //   convertList = (jsonMap as List)
    //       .map((itensData) => ProdutoModel.fromJson(itensData))
    //       .toList();
    // }

    return convertList;
  }

  Future<List<ProdutoModel>> getOneProduct(idProd) async {
    // var response = await dio.request("/listar_produto",
    //     data: {"id": idProd},
    //     options: Options(
    //       headers: {"Content-Type": "application/json"},
    //     ));
    List<ProdutoModel> list = [];

    return list;
  }

  Future<List<ProdutoModel>> postProducts() async {
    // var response = await dio.request(
    //   "/cadastrar_produto",
    //   data: {"id": 12, "name": "wendu"},
    //   options: Options(
    //     headers: {"Content-Type": "application/json"},
    //   ),
    // );
    List<ProdutoModel> list = [];
   

    return list;
  }
}
