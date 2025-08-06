import 'package:flutter/material.dart';

class Exercicio6 extends StatelessWidget {
  const Exercicio6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber, title: Text("Exericio 6")),
      body: Center(
        child: Card(
          borderOnForeground: true,
          child: SizedBox(
            width: 300,
            height: 200,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    const Icon(
                      Icons.local_mall_sharp,
                      color: Colors.amberAccent,
                      size: 40,
                    ),
                    const Text(
                      'Dica do dia:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const Text("\"A persistencia é o caminho para o êxito!\" "),
                    const Text("- Charles Chaplin"),
                    Expanded(child: Container()),
                    FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.amber,
                      ),
                      child: const Text("Ok"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
