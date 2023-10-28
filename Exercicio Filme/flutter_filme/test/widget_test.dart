import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_filme/main.dart'; 

void main() {
  testWidgets('FilmeListScreen exibe lista de filmes', (WidgetTester tester) async {
    await tester.pumpWidget(FilmeApp());

    
    expect(find.text('Lista de Filmes'), findsOneWidget);

    
    final List<String> filmes = ["Filme 1", "Filme 2", "Filme 3", "Filme 4", "Filme 5"];

    
    for (final filme in filmes) {
      expect(find.text(filme), findsOneWidget);
    }
  });
}
