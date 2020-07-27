import 'package:bemol_drogaria/shared/models/usuario.dart';
import 'package:bemol_drogaria/shared/repositories/user_repository.dart';
import 'package:mobx/mobx.dart';
part 'test_controller.g.dart';

class TestandoController = _TestandoControllerBase with _$TestandoController;

abstract class _TestandoControllerBase with Store {
  UserRepository repository;

  @observable
  ObservableFuture<List<UsuarioModel>> usuario;

  _TestandoControllerBase(this.repository) {
    usuario = repository.getAllUsers().asObservable();
  }
}
