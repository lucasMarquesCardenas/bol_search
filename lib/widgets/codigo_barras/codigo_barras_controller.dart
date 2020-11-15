import 'package:mobx/mobx.dart';
part 'codigo_barras_controller.g.dart';

class CodigoBarrasController = _CodigoBarrasControllerBase
    with _$CodigoBarrasController;

abstract class _CodigoBarrasControllerBase with Store {
  _CodigoBarrasControllerBase();

  @observable
  String codigobarras = '';

  @action
  setCode(String value) => codigobarras = value;
}
