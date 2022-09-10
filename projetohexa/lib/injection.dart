import 'package:get_it/get_it.dart';
import 'package:projetohexa/domain/service/aluguel_service_impl.dart';
import 'package:projetohexa/domain/port/in/aluguel_service.dart';
import 'package:projetohexa/domain/port/out/aluguel_repo.dart';
import 'package:projetohexa/infra/banco/aluguel_repo_impl.dart';

setupInject() {
  GetIt getIt = GetIt.I;

  getIt.registerSingleton<AluguelRepo>(AluguelRepoImpl());
  getIt.registerSingleton<AluguelService>(AluguelServiceImpl());
}
