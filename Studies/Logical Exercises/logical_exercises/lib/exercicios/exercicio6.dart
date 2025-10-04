import 'package:flutter/material.dart';
import 'dart:math';

class Exercicio6 extends StatefulWidget {
  const Exercicio6({super.key});

  @override
  State<Exercicio6> createState() => _Exercicio6State();
}

class _Exercicio6State extends State<Exercicio6> {
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Troca de cor"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
        ),
      ),
      body: Expanded(
        child: Container(
          color: Color.fromARGB(
            random.nextInt(255),
            random.nextInt(255),
            random.nextInt(255),
            random.nextInt(255),
          ),
          child: Center(
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.black12),
              ),
              onPressed: () {
                setState(() {
                  
                });
              },
              child: Text("Trocar cor"),
            ),
          ),
        ),
      ),
    );
  }
}
