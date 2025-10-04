import 'package:flutter/material.dart';
import 'package:logical_exercises/component/tile_exercise.dart';
import 'package:logical_exercises/exercicios/exercicio1.dart';
import 'package:logical_exercises/exercicios/exercicio2.dart';
import 'package:logical_exercises/exercicios/exercicio3.dart';
import 'package:logical_exercises/exercicios/exercicio4.dart';
import 'package:logical_exercises/exercicios/exercicio5.dart';
import 'package:logical_exercises/exercicios/exercicio6.dart';
import 'package:logical_exercises/exercicios/exercicio7.dart';
import 'package:logical_exercises/exercicios/exercicio8.dart';

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
    TileExercise(
      numero: 2,
      titulo: "Número par ou ímpar",
      texto:
          "Usuário digita um número num TextField. Mostre na tela se é par ou ímpar.",
      exercicioBuilder: (context) => Exercicio2(),
    ),
    TileExercise(
      numero: 3,
      titulo: "Lista de tarefas (mini to-do)",
      texto:
          "Usuário digita uma tarefa num campo.Ao clicar em \"Adicionar\", aparece na lista embaixo. Só exibir mesmo, sem excluir ainda.",
      exercicioBuilder: (context) => Exercicio3(),
    ),
    TileExercise(
      numero: 4,
      titulo: "Sorteio de número",
      texto:
          "Botão \"Sortear\" que gera um número aleatório entre 1 e 100. Mostre esse número na tela.",
      exercicioBuilder: (context) => Exercicio4(),
    ),

    TileExercise(
      numero: 5,
      titulo: "Tabuada",
      texto:
          "Usuário digita um número.Ao clicar em \"Gerar\", aparece a tabuada desse número (1x até 10x).",
      exercicioBuilder: (context) => Exercicio5(),
    ),

    TileExercise(
      numero: 6,
      titulo: "Troca de cor",
      texto:
          "Botão que, ao ser clicado, muda a cor de fundo da tela para uma cor aleatória.",
      exercicioBuilder: (context) => Exercicio6(),
    ),

    TileExercise(
      numero: 7,
      titulo: "Verificador de palíndromo",
      texto:
          "Usuário digita uma palavra. App diz se a palavra é um palíndromo (ex: \"arara\", \"ovo\").",
      exercicioBuilder: (p0) => Exercicio7(),
    ),

    TileExercise(
      numero: 8,
      titulo: "Lista de números ímpares",
      texto:
          "Crie uma lista na tela mostrando todos os números ímpares de 1 a 20.",
      exercicioBuilder: (p0) => Exercicio8(),
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
