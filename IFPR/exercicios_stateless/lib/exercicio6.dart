import 'package:flutter/material.dart';

class Exercicio6 extends StatelessWidget {
  const Exercicio6({super.key});
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
                    "Olá! Esse é o exercício 6",
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
          SizedBox(
            height: altura * 0.40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.all(Radius.circular(10)),
                    child: Image.asset("images/macaco.jpg"),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.all(Radius.circular(10)),
                    child: Image.asset("images/macaco.jpg"),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.all(Radius.circular(10)),
                    child: Image.asset("images/macaco.jpg"),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Esse é o lado esquerdo!"),
                Text("Esse é o lado direito!"),
              ],
            ),
          ),
          SizedBox(height: 180),
          Text(
            "Eu amo flutter!",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
