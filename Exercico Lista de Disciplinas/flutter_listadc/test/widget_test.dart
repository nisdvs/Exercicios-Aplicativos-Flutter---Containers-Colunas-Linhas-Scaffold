import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_listadc/main.dart'; 

void main() {
  testWidgets('Teste de lista de disciplinas', (WidgetTester tester) async {
    await tester.pumpWidget(DisciplinasApp());

   
    expect(find.text('Lista de Disciplinas'), findsOneWidget);

    
    final List<String> disciplinas = [
      "Matemática",
      "História",
      "Ciências",
      "Geografia",
      "Inglês",
    ];

    
    for (final disciplina in disciplinas) {
      expect(find.text(disciplina), findsOneWidget);
    }
  });
}
