import 'dart:convert';

import 'package:bemol_drogaria/shared/models/usuario.dart';
import 'package:dio/dio.dart';

class UserRepository {
  final Dio dio;
  UserRepository(this.dio);

  Future<List<UsuarioModel>> getAllUsers() async {
    List<UsuarioModel> convertList = [];

    var response = await dio.request("/listar",
        options: Options(
          headers: {"Content-Type": "application/json"},
        ));

    if (response.data == null) {
      print(response.statusCode);
    } else {
      final jsonMap = json.decode(response.data);
      convertList = (jsonMap as List)
          .map((itensData) => UsuarioModel.fromJson(itensData))
          .toList();
    }

    return convertList;
  }

  Future<List<UsuarioModel>> getOneUser(idUserToken) async {
    var response = await dio.request("/lista_user",
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

    var response = await dio.post(
      "/login",
      data: _body,
      options: Options(
        headers: {"Content-Type": "application/json"},
      ),
    );

    if (response.data == null) {
      print(response.statusCode);
    } else {
      final jsonMap = json.decode(response.data);
      convertList = (jsonMap as List)
          .map((itensData) => UsuarioModel.fromJson(itensData))
          .toList();
    }

    return convertList;
  }

  Future<List<UsuarioModel>> cadastrarUsuario(body) async {
    List<UsuarioModel> list = [];

    var _body = json.encode(body);

    var response = await dio.post("/cadastro_usuario",
        data: _body,
        options: Options(
          headers: {"Content-Type": "application/json"},
        ));

    UsuarioModel model = UsuarioModel.fromJson(response.data[0]);
    list.add(model);
    return list;
  }
}
