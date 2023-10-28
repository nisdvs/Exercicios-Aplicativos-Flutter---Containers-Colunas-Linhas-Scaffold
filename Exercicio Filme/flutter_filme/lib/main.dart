import 'package:flutter/material.dart';

void main() {
  runApp(FilmeApp());
}

class FilmeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FilmeListScreen(),
    );
  }
}

class FilmeListScreen extends StatelessWidget {
  final List<String> filmes = [
    "Filme 1",
    "Filme 2",
    "Filme 3",
    "Filme 4",
    "Filme 5",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Filmes'),
      ),
      body: ListView.builder(
        itemCount: filmes.length,
        itemBuilder: (context, index) {
          return FilmeCard(filmes[index]);
        },
      ),
    );
  }
}

class FilmeCard extends StatelessWidget {
  final String nomeFilme;

  FilmeCard(this.nomeFilme);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Card(
        child: ListTile(
          title: Text(nomeFilme),
          onTap: () {
          },
        ),
      ),
    );
  }
}
