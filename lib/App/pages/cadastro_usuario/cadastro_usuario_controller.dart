import 'package:bemol_drogaria/shared/models/usuario.dart';
import 'package:bemol_drogaria/shared/repositories/user_repository.dart';
import 'package:mobx/mobx.dart';
part 'cadastro_usuario_controller.g.dart';

class CadastroUsuarioController = _CadastroUsuarioControllerBase
    with _$CadastroUsuarioController;

abstract class _CadastroUsuarioControllerBase with Store {
  UserRepository repository;
  _CadastroUsuarioControllerBase(this.repository);
  @observable
  ObservableFuture<List<UsuarioModel>> usuario;
  @action
  cadastrar({Map<String, dynamic> list}) {
    usuario = repository.cadastrarUsuario(list).asObservable();
  }
}
