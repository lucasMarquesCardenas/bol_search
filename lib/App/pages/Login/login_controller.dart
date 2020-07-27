import 'package:bemol_drogaria/shared/models/usuario.dart';
import 'package:bemol_drogaria/shared/repositories/user_repository.dart';
import 'package:mobx/mobx.dart';
part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  UserRepository repository;

  @observable
  ObservableFuture<List<UsuarioModel>> usuario;

  _LoginControllerBase(this.repository) {
    usuario = repository.getAllUsers().asObservable();
  }
}
