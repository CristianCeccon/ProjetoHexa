import 'package:projetohexa/domain/dto/aluguel_dto.dart';
import 'package:projetohexa/domain/port/out/aluguel_repo.dart';

class AluguelRepoImpl extends AluguelRepo {
  List<Map> dados = [
    {"precoMinuto": 5.00, "tempo": 10, "valor": 50.00},
    {"precoMinuto": 20.00, "tempo": 10, "valor": 200.00},
  ];

  @override
  void save(AluguelDTO aluguel) {
    var dado = {
      "precoMinuto": aluguel.precoMinuto,
      "tempo": aluguel.tempoAluguel,
      "valor": aluguel.valorPagar,
    };

    dados.add(dado);
  }

  @override
  List<AluguelDTO> findAll() {
    var lista = <AluguelDTO>[];

    dados.map((element) {
      lista.add(
        AluguelDTO(
          element["tempo"],
          element["precoMinuto"],
          element["valor"],
        ),
      );
    });

    return lista;
  }
}
