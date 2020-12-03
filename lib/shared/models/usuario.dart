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
  Map generos;
  Map unidades;

  UsuarioModel({
    this.id,
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
    this.status,
    this.generos,
    this.unidades,
  });

  UsuarioModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nomeCompleto = json['nome_completo'];
    nomeMae = json['nome_mae'];
    matricula = json['matricula'];
    email = json['email'];
    senha = json['senha'];
    dataNascimento = json['data_nascimento'];
    telefone = json['telefone'];
    createdAt = json['created_At'];
    updateAt = json['update_At'];
    cargos = json['cargos'];
    status = json['status'];
    cargos = json['generos'];
    status = json['unidades'];
  }

  @override
  String toString() {
    return 'UsuarioModel{nomeCompleto: $nomeCompleto, nomeMae: $nomeMae, matricula: $matricula, email: $email, senha: $senha, dataNascimento: $dataNascimento,' +
        'telefone: $telefone, createdAt: $createdAt, updateAt: $updateAt, cargos: $cargos, status: $status}';
  }

}
