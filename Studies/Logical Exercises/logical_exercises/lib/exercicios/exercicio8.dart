import 'package:flutter/material.dart';

class Exercicio8 extends StatelessWidget {
  const Exercicio8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de números ímpares"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
        ),
      ),
      body: Column(
        children: List.generate(21, (index) {
          return index.isEven
              ? Text(index.toString())
              : SizedBox.shrink();
        }),
      ),
    );
  }
}
