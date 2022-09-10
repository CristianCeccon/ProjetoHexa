import 'package:projetohexa/domain/dto/aluguel_dto.dart';

class Aluguel {
  int tempoAluguel;
  double precoMinuto;

  double valorPagar;

  Aluguel(this.tempoAluguel, this.precoMinuto, this.valorPagar);

  void calcularValorPagar() {
    valorPagar = tempoAluguel * precoMinuto;
  }

  AluguelDTO toDTO() {
    return AluguelDTO(tempoAluguel, precoMinuto, valorPagar);
  }
}
