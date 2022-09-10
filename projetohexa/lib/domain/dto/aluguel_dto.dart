import 'package:projetohexa/domain/entity/aluguel.dart';

class AluguelDTO {
  int tempoAluguel;
  double precoMinuto;
  double? valorPagar;

  AluguelDTO(this.tempoAluguel, this.precoMinuto, [this.valorPagar]);

  Aluguel toEntity() {
    return Aluguel(tempoAluguel, precoMinuto, valorPagar ?? 0.0);
  }
}
