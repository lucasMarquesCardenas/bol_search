import 'package:bemol_drogaria/service/service.dart';
import 'package:bemol_drogaria/shared/models/cargo.dart';
import 'package:dio/dio.dart';

class CargoRepository {
  CustomDio dio;

  CargoRepository(this.dio);

  Future<List<CargoModel>> listarTodosCargos() async {
    List<CargoModel> convertList = [];

    try {
      var response = await dio.client.get(
        "/cargos/listar_todas_cargos",
        options: Options(
          headers: {"Content-Type": "application/json"},
        ),
      );
      print(response.data);
      if (response.data == "") {
        return null;
      } else {
        Map jsonMap = response.data;
        var list = CargoModel.fromJson(jsonMap);
        convertList.add(list);

        return convertList;
      }
    } catch (e) {
      return null;
    }
  }
}
