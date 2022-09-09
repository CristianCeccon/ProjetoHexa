import 'package:get_it/get_it.dart';
import 'package:projetohexa/domain/dto/aluguel_dto.dart';
import 'package:projetohexa/domain/port/in/aluguel_service.dart';

class HomeController{

  final AluguelService _service = GetIt.I.get<AluguelService>();

  void criarAluguel(AluguelDTO aluguel){
    _service.salvar(aluguel);
  }

  List<AluguelDTO> listaAlugueis(){
    return _service.listar();
  }

}