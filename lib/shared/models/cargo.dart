class CargoModel {
  int id;
  int nomeCargo;

  CargoModel({
    this.id,
    this.nomeCargo,
  });

  CargoModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nomeCargo = json['nome_cargo'];
  }
}
