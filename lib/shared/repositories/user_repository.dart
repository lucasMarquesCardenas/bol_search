import 'package:bemol_drogaria/shared/models/usuario.dart';
import 'package:dio/dio.dart';

class UserRepository {
  final Dio dio;

  UserRepository(this.dio);

  Future<List<UsuarioModel>> getAllUsers() async {
    var response = await dio.request("/listar_all_users",
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

  Future<List<UsuarioModel>> getOneUser(idUserToken) async {
    var response = await dio.request("/lista_user",
        data: {"token": idUserToken},
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

  Future<List<UsuarioModel>> loginUsuario(email, senha) async {
    var response = await dio.request("/login",
        data: {
          "email": email,
          "senha": senha,
        },
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

  Future<List<UsuarioModel>> cadastrarUsuario() async {
    var response = await dio.request("/cadastrar_usuario",
        data: {},
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
