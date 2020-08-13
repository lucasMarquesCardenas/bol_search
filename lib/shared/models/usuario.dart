class UsuarioModel {
  int id;
  String nomeCompleto;
  String nomeMae;
  int matricula;
  String email;
  String senha;
  String telefone;

  UsuarioModel({
    this.id,
    this.nomeCompleto,
    this.nomeMae,
    this.matricula,
    this.email,
    this.senha,
    this.telefone,
  });

  UsuarioModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nomeCompleto = json['nomeCompleto'];
    nomeMae = json['nomeMae'];
    matricula = json['matricula'];
    email = json['email'];
    senha = json['senha'];
    telefone = json['telefone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nomeCompleto'] = this.nomeCompleto;
    data['nomeMae'] = this.nomeMae;
    data['matricula'] = this.matricula;
    data['email'] = this.email;
    data['senha'] = this.senha;
    data['telefone'] = this.telefone;
    return data;
  }

  @override
  String toString() {
    return 'UsuarioModel{nomeCompleto: $nomeCompleto, nomeMae: $nomeMae, matricula: $matricula, email: $email, senha: $senha, telefone: $telefone}';
  }
}
