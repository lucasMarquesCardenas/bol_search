class GeneroModel {
  int id;
  String nomeGenero;

  GeneroModel({
    this.id,
    this.nomeGenero,
  });

  GeneroModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nomeGenero = json['nome_genero'];
  }
}
