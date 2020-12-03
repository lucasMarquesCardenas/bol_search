import 'package:bemol_drogaria/service/service.dart';
import 'package:bemol_drogaria/shared/models/genero.dart';
import 'package:dio/dio.dart';

class GeneroRepository {
  CustomDio dio;

  GeneroRepository(this.dio);

  Future<List<GeneroModel>> listarTodosGeneros() async {
    List<GeneroModel> convertList = [];

    try {
      var response = await dio.client.get(
        "/generos/listar_todos_generos",
        options: Options(
          headers: {"Content-Type": "application/json"},
        ),
      );
      print(response.data);
      if (response.data == "") {
        return null;
      } else {
        Map jsonMap = response.data;
        var list = GeneroModel.fromJson(jsonMap);
        convertList.add(list);

        return convertList;
      }
    } catch (e) {
      return null;
    }
  }
}
