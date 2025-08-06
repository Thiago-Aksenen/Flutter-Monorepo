import 'package:flutter/material.dart';

class Exercicio1 extends StatelessWidget {
  const Exercicio1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Exercicio 1")),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Center(child: Text("bem vindo usuário")),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset("images/macaco.jpg"),
          ),
        ],
      ),
    );
  }
}
