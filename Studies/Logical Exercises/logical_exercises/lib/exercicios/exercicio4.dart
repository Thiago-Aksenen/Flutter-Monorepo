import 'package:flutter/material.dart';
import 'dart:math';

class Exercicio4 extends StatefulWidget {
  const Exercicio4({super.key});

  @override
  State<Exercicio4> createState() => _Exercicio4State();
}

class _Exercicio4State extends State<Exercicio4> {
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    int numero = random.nextInt(100);
    return Scaffold(
      appBar: AppBar(
        title: Text("Sorteio de número"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
        ),
      ),
      body: Center(
        child: Container(
          height: 550,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.blue[700],
          ),

          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Text("Valor gerado:", style: TextStyle(color: Colors.white)),
                Expanded(
                  child: Text(
                    numero.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 120, // tamanho máximo
                    ),
                  ),
                ),
                Text(
                  "Gerar número aleatório!:",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.black),
                    ),
                    onPressed: () {
                      setState(() {
                        //nao precisa ter nada, afinal ele recria o widget com o novo valor, mas já tem um novo valor toda vez!
                      });
                    },
                    child: Text("Gerar", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
