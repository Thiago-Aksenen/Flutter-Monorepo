import 'package:flutter/material.dart';
import 'package:logical_exercises/component/tile_exercise.dart';
import 'package:logical_exercises/exercicios/exercicio1.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<TileExercise> lista = [
    TileExercise(
      numero: 1,
      titulo: "Contador básico",
      texto:
          "Crie um app com um botão de soma que aumenta o número mostrado na tela. Depois, adicione também um botão subtração que diminui.",
      exercicioBuilder: (context) => Exercicio1(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Exercícios de Lógica",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),

        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return lista[index];
        },
        itemCount: lista.length,
      ),
    );
  }
}
