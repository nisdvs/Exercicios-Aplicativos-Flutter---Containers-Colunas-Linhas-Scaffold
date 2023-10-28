import 'package:flutter/material.dart';

void main() {
  runApp(DisciplinasApp());
}

class DisciplinasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DisciplinasListScreen(),
    );
  }
}

class DisciplinasListScreen extends StatelessWidget {
  final List<String> disciplinas = [
    "Matemática",
    "História",
    "Ciências",
    "Geografia",
    "Inglês",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Disciplinas'),
      ),
      body: ListView.builder(
        itemCount: disciplinas.length,
        itemBuilder: (context, index) {
          return DisciplinaCard(disciplinas[index]);
        },
      ),
    );
  }
}

class DisciplinaCard extends StatelessWidget {
  final String nomeDisciplina;

  DisciplinaCard(this.nomeDisciplina);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Card(
        child: ListTile(
          title: Text(nomeDisciplina),
          onTap: () {
          },
        ),
      ),
    );
  }
}
