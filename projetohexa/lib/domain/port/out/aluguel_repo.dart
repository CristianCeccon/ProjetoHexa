import 'package:projetohexa/domain/dto/aluguel_dto.dart';

abstract class AluguelRepo{

  void save(AluguelDTO aluguel);

  List<AluguelDTO> findAll();

}