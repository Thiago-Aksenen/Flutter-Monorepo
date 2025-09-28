import 'package:flutter/material.dart';
import 'dart:math';

class TileExercise extends StatelessWidget {
  final int numero;
  final String titulo;
  final String texto;
  final Widget Function(BuildContext) exercicioBuilder;

  const TileExercise({
    super.key,
    required this.numero,
    required this.titulo,
    required this.texto,
    required this.exercicioBuilder,
  });

  @override
  Widget build(BuildContext context) {
    final random = Random();
    final int numero1 = 100 * (3 + random.nextInt(6));
    final int numero2 = numero1 + 100;

    final cor1 = Colors.blue[numero1]!;
    final cor2 = Colors.blue[numero2]!;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.bottomLeft,
            colors: [cor1, cor2],
          ),
        ),
        height: 150,
        width: 150,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "#$numero",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => exercicioBuilder(context),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.arrow_circle_right_outlined,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ],
              ),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      titulo,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      texto,
                      style: TextStyle(color: Colors.white, fontSize: 12),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
