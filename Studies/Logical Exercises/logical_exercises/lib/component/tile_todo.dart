import 'package:flutter/material.dart';

class TileTodo extends StatefulWidget {
  final String titulo;
  const TileTodo({super.key, required this.titulo});

  @override
  State<TileTodo> createState() => _TileTodoState();
}

class _TileTodoState extends State<TileTodo> {
  bool pressionado = true;
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
              GestureDetector(
                onTap: () {
                  setState(() {
                    pressionado = !pressionado;
                  });
                },
                child: pressionado
                    ? Icon(Icons.circle_outlined)
                    : Icon(Icons.check_circle_rounded),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.titulo, style: TextStyle(fontSize: 16)),
                  ],
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
