import 'package:flutter/material.dart';

class Exercicio3 extends StatelessWidget {
  const Exercicio3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber, title: Text("Exericio 3")),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: 50),
            ElevatedButton(onPressed: () {}, child: Text("Botão 1")),
            OutlinedButton(onPressed: () {}, child: Text("Botão 2")),
            TextButton(onPressed: () {}, child: Text("Botão 3")),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
