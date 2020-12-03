import 'dart:convert';

import 'package:bemol_drogaria/service/service.dart';
import 'package:bemol_drogaria/shared/models/unidade.dart';
import 'package:dio/dio.dart';

class UnidadeRepository {
  final CustomDio dio;

  UnidadeRepository(this.dio);

  Future<List<UnidadeModel>> listarTodasUnidades() async {
    List<UnidadeModel> convertList = [];

    try {
      var response = await dio.client.get(
        "/unidades/listar_todas_unidades",
        options: Options(
          headers: {"Content-Type": "application/json"},
        ),
      );
      print(response.data);
      if (response.data == "") {
        return null;
      } else {
        Map jsonMap = response.data;
        var list = UnidadeModel.fromJson(jsonMap);
        convertList.add(list);

        return convertList;
      }
    } catch (e) {
      return null;
    }
  }

  Future<List<UnidadeModel>> cadastrarUnidade(body) async {
    List<UnidadeModel> convertList = [];

    String _body = json.encode(body);

    try {
      var response = await dio.client.post(
        "/unidades/cadastrar_unidade",
        data: _body,
        options: Options(
          headers: {"Content-Type": "application/json"},
        ),
      );
      print(response.data);
      if (response.data == "") {
        return null;
      } else {
        Map jsonMap = response.data;
        var list = UnidadeModel.fromJson(jsonMap);
        convertList.add(list);

        return convertList;
      }
    } catch (e) {
      return null;
    }
  }
}
