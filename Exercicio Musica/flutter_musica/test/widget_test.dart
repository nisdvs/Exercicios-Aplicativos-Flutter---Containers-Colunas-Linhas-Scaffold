
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_musica/main.dart'; 

void main() {
  testWidgets('MusicListScreen exibe lista de músicas', (WidgetTester tester) async {
    
    await tester.pumpWidget(MusicApp());

    
    expect(find.text('Lista de Músicas'), findsOneWidget);

  
    final List<String> musicas = ["Música 1", "Música 2", "Música 3", "Música 4", "Música 5"];

    
    for (final musica in musicas) {
      expect(find.text(musica), findsOneWidget);
    }
  });
}

