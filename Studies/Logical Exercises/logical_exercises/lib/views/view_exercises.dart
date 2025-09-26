import 'package:flutter/material.dart';
import 'package:logical_exercises/component/exercise_card.dart';
import 'package:logical_exercises/model/exercise.dart';

class ViewExercises extends StatefulWidget {
  ViewExercises({super.key});
  final List<Exercise> _exercicios = [
    Exercise(title: "Exercício 1", text: "Texto do exercício 1", number: 1),
    Exercise(title: "Exercício 2", text: "Texto do exercício 2", number: 2),
    Exercise(title: "Exercício 3", text: "Texto do exercício 3", number: 3),
  ];

  @override
  State<ViewExercises> createState() => _ViewExercisesState();
}

class _ViewExercisesState extends State<ViewExercises> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget._exercicios.length,
      itemBuilder: (context, index) {
        final exercicio = widget._exercicios[index];
        return ExerciseCard(exercise: exercicio);
      },
    );
  }
}
