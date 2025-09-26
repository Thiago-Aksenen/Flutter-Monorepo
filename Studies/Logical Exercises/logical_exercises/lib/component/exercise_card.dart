import 'package:flutter/material.dart';
import 'package:logical_exercises/model/exercise.dart';

class ExerciseCard extends StatefulWidget {
  final Exercise exercise;
  const ExerciseCard({super.key, required this.exercise});

  @override
  State<ExerciseCard> createState() => _ExerciseCardState();
}

class _ExerciseCardState extends State<ExerciseCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [const Color.fromARGB(255, 87, 36, 100), Colors.indigo],
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                widget.exercise.number.toString(),
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            VerticalDivider(color: Colors.white, indent: 8, endIndent: 8, thickness: 2,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.exercise.title,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    widget.exercise.text,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
