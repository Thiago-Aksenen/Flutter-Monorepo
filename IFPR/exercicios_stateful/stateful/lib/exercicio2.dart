import 'package:flutter/material.dart';

class Exercicio2 extends StatefulWidget {
  const Exercicio2({super.key});

  @override
  State<Exercicio2> createState() => _Exercicio2State();
}

class _Exercicio2State extends State<Exercicio2> {
  final TextEditingController _controle = TextEditingController();
  String nome = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   title: Row(
      //     children: [
      //       Icon(Icons.star, color: Colors.white),
      //       SizedBox(width: 10),
      //       Text(
      //         "Exercício 2",
      //         style: TextStyle(
      //           color: Colors.white,
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      body: Column(
        children: [
          if (nome != "")
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Text("Seja bem vindo, $nome"),
                  SizedBox(height: 10),
                  ClipRRect(
                    borderRadius: BorderRadiusGeometry.all(Radius.circular(20)),
                    child: Image.asset("images/macaco.jpg"),
                  ),
                ],
              ),
            ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: _controle,
                  decoration: InputDecoration(
                    hintText: "Exemplo",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: FilledButton(
                  onPressed: () {
                    setState(() {
                      nome = _controle.text;
                    });
                  },
                  child: Text("Enviar"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
