import 'package:bemol_drogaria/shared/models/usuario.dart';
import 'package:bemol_drogaria/shared/repositories/user_repository.dart';
import 'package:mobx/mobx.dart';
part 'cadastro_usuario_controller.g.dart';

class CadastroUsuarioController = _CadastroUsuarioControllerBase
    with _$CadastroUsuarioController;

abstract class _CadastroUsuarioControllerBase with Store {
  UserRepository repository;
  _CadastroUsuarioControllerBase(this.repository) {
    cadastrar();
  }
  @observable
  ObservableFuture<List<UsuarioModel>> usuario;
  @action
  cadastrar({List listForm}) async {
    // try {
    //   usuario = repository.cadastrarUsuario(listForm).asObservable();
    // } catch (exception) {
    //   print('algo deu errado ' + exception);
    // }
  }
}
