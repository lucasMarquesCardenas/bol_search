class UsuarioModel {
  int id;
  String nomeCompleto;
  String nomeMae;
  int matricula;
  String email;
  String senha;
  String telefone;
  String body;

  UsuarioModel({this.id, this.email, this.senha, this.body});

  UsuarioModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    senha = json['senha'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['senha'] = this.senha;
    data['body'] = this.body;
    return data;
  }
}
