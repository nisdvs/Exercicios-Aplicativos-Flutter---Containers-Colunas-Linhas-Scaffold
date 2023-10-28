import 'package:flutter/material.dart';

void main() {
  runApp(MusicApp());
}

class MusicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MusicListScreen(),
    );
  }
}

class MusicListScreen extends StatelessWidget {
  final List<String> musicas = [
    "Música 1",
    "Música 2",
    "Música 3",
    "Música 4",
    "Música 5",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Músicas'),
      ),
      body: ListView.builder(
        itemCount: musicas.length,
        itemBuilder: (context, index) {
          return MusicCard(musicas[index]);
        },
      ),
    );
  }
}

class MusicCard extends StatelessWidget {
  final String nomeMusica;

  MusicCard(this.nomeMusica);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Card(
        child: ListTile(
          title: Text(nomeMusica),
          onTap: () {
          },
        ),
      ),
    );
  }
}
