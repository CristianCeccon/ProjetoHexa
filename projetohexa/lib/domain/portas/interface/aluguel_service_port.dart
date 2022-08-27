import 'package:projetohexa/domain/DTOS/aluguel_DTO.dart';

abstract class AluguelServicePort {
  void calcularValorPagar(AluguelDTO aluguelDTO);
}
