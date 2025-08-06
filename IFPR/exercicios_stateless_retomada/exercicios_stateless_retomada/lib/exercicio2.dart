import 'package:flutter/material.dart';

class Exercicio2 extends StatelessWidget {
  const Exercicio2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber, title: Text("Exericio 2")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset(
              "images/macaco.jpg",
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            "Aqui eu tenho uma imagem 150 x 150 para testar a propriedade fit!",
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 150),
        ],
      ),
    );
  }
}
