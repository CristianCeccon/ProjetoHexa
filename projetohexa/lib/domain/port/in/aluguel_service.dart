import 'package:projetohexa/domain/dto/aluguel_dto.dart';

abstract class AluguelService {
  
  void salvar(AluguelDTO aluguel);

  List<AluguelDTO> listar();

}
