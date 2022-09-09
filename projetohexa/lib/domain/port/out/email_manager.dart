import 'package:projetohexa/domain/dto/aluguel_dto.dart';

abstract class EmailManager{
  Future<void> send(AluguelDTO aluguel);
}