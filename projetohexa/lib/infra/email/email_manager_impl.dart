import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:projetohexa/domain/dto/aluguel_dto.dart';
import 'package:projetohexa/domain/port/out/email_manager.dart';

class EmailManagerImpl extends EmailManager {
  @override
  Future<void> send(AluguelDTO aluguel) async {
    final Email email = Email(
      body: 'Valor da fatura do aluguel recente: ${aluguel.valorPagar}',
      subject: 'Fatura',
      recipients: ['example@ex.com'],
      isHTML: false,
    );

    await FlutterEmailSender.send(email);
  }
}
