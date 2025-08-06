import 'package:flutter/material.dart';

class Exercicio4 extends StatelessWidget {
  const Exercicio4({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double altura = size.height;
    double largura = size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Icon(Icons.more_vert_rounded),
      ),
      body: Column(
        children: [
          Container(
            height: altura * 0.10,
            width: largura,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Olá! Esse é o exercício 4",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.girl, size: 45),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recomendados", style: TextStyle(fontSize: 20)),
                FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(backgroundColor: Colors.black),
                  child: Text("Mais"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
