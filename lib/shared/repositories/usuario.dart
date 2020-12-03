import 'dart:convert';
import 'package:bemol_drogaria/Service/service.dart';
import 'package:bemol_drogaria/shared/models/usuario.dart';
import 'package:dio/dio.dart';

class UserRepository {
  final CustomDio dio;

  UserRepository(this.dio);

  Future<List<UsuarioModel>> getAllUsers() async {
    List<UsuarioModel> convertList = [];

    var response = await dio.client.request("/listar",
        options: Options(
          headers: {"Content-Type": "application/json"},
        ));

    if (response.data == "") {
      print(response.statusCode);
      convertList = null;
    } else {
      final jsonMap = json.decode(response.data);
      convertList = (jsonMap as List)
          .map((itensData) => UsuarioModel.fromJson(itensData))
          .toList();
    }

    return convertList;
  }

  Future<List<UsuarioModel>> getOneUser(idUserToken) async {
    var response = await dio.client.request("/lista_user",
        data: {"token": idUserToken},
        options: Options(
          headers: {"Content-Type": "application/json"},
        ));                                                                                                                                                                                      
    List<UsuarioModel> list = [];
    for (var json in (response.data as List)) {
      UsuarioModel model = UsuarioModel(email: json['email']);
      list.add(model);
    }

    return list;
  }

  Future<List<UsuarioModel>> loginUsuario(body) async {
    List<UsuarioModel> convertList = [];

    String _body = json.encode(body);

    try {
      var response = await dio.client.post(
        "/users/logar_usuario",
        data: _body,
        options: Options(
          headers: {"Content-Type": "application/json"},
        ),
      );
      print(response.data);
      if (response.data == "") {
        return null;
      } else {
        // UsuarioModel.saveStorageUserInformation(response.data);
        Map jsonMap = response.data;
        var list = UsuarioModel.fromJson(jsonMap);
        convertList.add(list);

        return convertList;
      }
    } catch (e) {
      return null;
    }
  }

  Future<List<UsuarioModel>> cadastrarUsuario(body) async {
    List<UsuarioModel> convertList = [];

    String _body = json.encode(body);

    try {
      var response = await dio.client.post(
        "/users/cadastro_usuario",
        data: _body,
        options: Options(
          headers: {"Content-Type": "application/json"},
        ),
      );

      if (response.data == "") {
        return null;
      } else {
        Map jsonMap = response.data;
        var list = UsuarioModel.fromJson(jsonMap);
        convertList.add(list);

        return convertList;
      }
    } catch (e) {
      return null;
    }
  }
}
