import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:projetohexa/domain/dto/aluguel_dto.dart';
import 'package:projetohexa/domain/port/in/aluguel_service.dart';

void main() {
  group('Testes de service aluguel', () {
    final AluguelService _service = GetIt.I.get<AluguelService>();

    test('Teste listar', () {
      expect(() => _service.listar(), isInstanceOf<List<AluguelDTO>>());
    });

    test('Teste salvar e listar', () {
      var tamanho = _service.listar().length;

      AluguelDTO aluguelDTO = AluguelDTO(100, 10, 1000);
      _service.salvar(aluguelDTO);

      var tamanhoNovo = _service.listar().length;

      expect(tamanho - tamanhoNovo, isNegative);
    });

    test('Teste salvar', () {
      AluguelDTO aluguelDTO = AluguelDTO(100, 10, 1000);

      expect(() => _service.salvar(aluguelDTO), null);
    });
  });

  // testWidgets('Counter increments smoke test', (WidgetTester tester) async {
  //   // Build our app and trigger a frame.
  //   await tester.pumpWidget(const MyApp());

  //   // Verify that our counter starts at 0.
  // expect(find.text('0'), findsOneWidget);
  // expect(find.text('1'), findsNothing);

  //   // Tap the '+' icon and trigger a frame.
  //   await tester.tap(find.byIcon(Icons.add));
  //   await tester.pump();

  //   // Verify that our counter has incremented.
  //   expect(find.text('0'), findsNothing);
  //   expect(find.text('1'), findsOneWidget);
  // });
}
