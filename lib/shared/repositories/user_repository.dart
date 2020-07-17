import 'package:bemol_drogaria/shared/models/usuario/usuario.dart';
import 'package:dio/dio.dart';

class UserRepository {
  final Dio dio;

  UserRepository(this.dio);

  Future<List<UsuarioModel>> getAllUsers() async {
    var response = await dio.request("/listar",
        options: Options(
          headers: {"Content-Type": "application/json"},
        ));
    List<UsuarioModel> list = [];
    for (var json in (response.data[0] as List)) {
      UsuarioModel model = UsuarioModel(email: json['email']);
      list.add(model);
    }

    return list;
  }
}
