import 'package:bemol_drogaria/shared/utils/prefs.dart';

class UsuarioModel {
  int id;
  String nomeCompleto;
  String nomeMae;
  int matricula;
  String email;
  String senha;
  String dataNascimento;
  String telefone;
  String createdAt;
  String updateAt;
  Map cargos;
  Map status;

  UsuarioModel(
      {this.id,
      this.nomeCompleto,
      this.nomeMae,
      this.matricula,
      this.email,
      this.senha,
      this.dataNascimento,
      this.telefone,
      this.createdAt,
      this.updateAt,
      this.cargos,
      this.status});

  UsuarioModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nomeCompleto = json['nomeCompleto'];
    nomeMae = json['nomeMae'];
    matricula = json['matricula'];
    email = json['email'];
    senha = json['senha'];
    dataNascimento = json['dataNascimento'];
    telefone = json['telefone'];
    createdAt = json['created_At'];
    updateAt = json['update_At'];
    cargos = json['cargos'];
    status = json['status'];
  }

  UsuarioModel.getStorage() {
    getStorageUserInformation();
  }

  @override
  String toString() {
    return 'UsuarioModel{nomeCompleto: $nomeCompleto, nomeMae: $nomeMae, matricula: $matricula, email: $email, senha: $senha, dataNascimento: $dataNascimento,' 
    + 'telefone: $telefone, createdAt: $createdAt, updateAt: $updateAt, cargos: $cargos, status: $status}';
  }

  UsuarioModel.saveStorageUserInformation(json) {
    Prefs.setString("user.prefs", json);
    // getStorageUserInformation();
  }

  Future<String> getStorageUserInformation() async {
    String json = await Prefs.getString("user.prefs");
    return json;
  }
}
