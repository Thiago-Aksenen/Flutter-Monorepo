import 'package:flutter/material.dart';

class Exercicio3 extends StatelessWidget {
  const Exercicio3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Exercicio 3")),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          SizedBox(height: 50),
          Center(
            child: Text(
              "Macaco",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset("images/macaco.jpg"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              foregroundDecoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.star, size: 30),
                  Icon(Icons.star, size: 30),
                  Icon(Icons.star, size: 30),
                  Icon(Icons.star, size: 30),
                  Icon(Icons.star, size: 30),
                ],
              ),
            ),
          ),
          Expanded(child: SizedBox()),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(backgroundColor: Colors.amber),
                  child: Text(
                    "Anterior",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(backgroundColor: Colors.amber),
                  child: Text(
                    "Proximo",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
