class UnidadeModel {
  int id;
  String nomeUnidade;

  UnidadeModel({
    this.id,
    this.nomeUnidade,
  });

  UnidadeModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nomeUnidade = json['nome_unidade'];
  }
}
