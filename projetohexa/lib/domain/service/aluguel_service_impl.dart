import 'package:get_it/get_it.dart';
import 'package:projetohexa/domain/dto/aluguel_dto.dart';
import 'package:projetohexa/domain/port/in/aluguel_service.dart';
import 'package:projetohexa/domain/port/out/aluguel_repo.dart';

class AluguelServiceImpl extends AluguelService {
  final AluguelRepo _repository = GetIt.I.get<AluguelRepo>();

  @override
  List<AluguelDTO> listar() {
    return _repository.findAll();
  }

  @override
  void salvar(AluguelDTO aluguel) {
    var entity = aluguel.toEntity();

    entity.calcularValorPagar();

    _repository.save(entity.toDTO());
  }
}
