class ProdutoModel {
  int id;
  String nomeProduto;
  String subtitulo;
  int codBemol;
  String codBarras;
  int tipoProduto;

  ProdutoModel({
    this.id,
    this.nomeProduto,
    this.subtitulo,
    this.codBemol,
    this.codBarras,
  });

  ProdutoModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nomeProduto = json['nomeProduto'];
    subtitulo = json['subtitulo'];
    codBemol = json['codBemol'];
    codBarras = json['codBarras'];
    tipoProduto = json['tipoProduto'];
  }
}
