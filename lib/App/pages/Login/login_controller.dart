import 'package:bemol_drogaria/shared/models/usuario.dart';
import 'package:bemol_drogaria/shared/repositories/user_repository.dart';
import 'package:mobx/mobx.dart';
part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  UserRepository repository;

  _LoginControllerBase(this.repository) {
    // users();
  }

  @observable
  ObservableFuture<List<UsuarioModel>> usuario;

  @observable
  ObservableFuture<List<UsuarioModel>> usuarios;

  @action
  login({Map<String, dynamic> list}) {
    usuario = repository.loginUsuario(list).asObservable();
  }

  @action
  users() {
    usuarios = repository.getAllUsers().asObservable();
  }
}
