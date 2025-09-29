import 'package:flutter/material.dart';

class TileTodo extends StatelessWidget {
  final bool pressionado;
  final String titulo;

  const TileTodo({super.key, this.pressionado = true, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white60,
        ),
        height: 80,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              pressionado
                  ? Icon(Icons.circle_outlined)
                  : Icon(Icons.check_circle_rounded),

              SizedBox(width: 20),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text(titulo, style: TextStyle(fontSize: 16))],
                ),
              ),
              VerticalDivider(color: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
