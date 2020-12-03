import 'package:bemol_drogaria/shared/models/cargo.dart';
import 'package:bemol_drogaria/shared/models/genero.dart';
import 'package:bemol_drogaria/shared/models/unidade.dart';
import 'package:bemol_drogaria/shared/models/usuario.dart';
import 'package:bemol_drogaria/shared/repositories/cargo.dart';
import 'package:bemol_drogaria/shared/repositories/genero.dart';
import 'package:bemol_drogaria/shared/repositories/unidade.dart';
import 'package:bemol_drogaria/shared/repositories/usuario.dart';
import 'package:mobx/mobx.dart';
part 'cadastro_usuario_controller.g.dart';

class CadastroUsuarioController = _CadastroUsuarioControllerBase
    with _$CadastroUsuarioController;

abstract class _CadastroUsuarioControllerBase with Store {
  UserRepository userRepository;
  UnidadeRepository unidadeRepository;
  GeneroRepository generoRepository;
  CargoRepository cargoRepository;

  _CadastroUsuarioControllerBase(
    this.userRepository,
    this.unidadeRepository,
    this.generoRepository,
    this.cargoRepository,
  );

  @observable
  ObservableFuture<List<UsuarioModel>> usuario;

  @observable
  ObservableFuture<List<UnidadeModel>> unidades;

  @observable
  ObservableFuture<List<GeneroModel>> generos;

  @observable
  ObservableFuture<List<CargoModel>> cargos;

  @action
  cadastrar({Map<String, dynamic> list}) {
    usuario = userRepository.cadastrarUsuario(list).asObservable();
  }

  @action
  listarUnidades() {
    unidades = unidadeRepository.listarTodasUnidades().asObservable();
  }

  @action
  listarGeneros() {
    generos = generoRepository.listarTodosGeneros().asObservable();
  }

  @action
  listarCargos() {
    cargos = cargoRepository.listarTodosCargos().asObservable();
  }
}
