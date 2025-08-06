import 'package:componentizacao/infodog.dart';
import 'package:flutter/material.dart';

class Componentizacao extends StatelessWidget {
  const Componentizacao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.pets),
            SizedBox(width: 20),
            Text("Pet Love!", style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        children: [
          InfoDog(
            image: "images/c1.png",
            nome: "Toby",
            raca: "Vira-lata",
            idade: "2 anos",
          ),

          InfoDog(
            image: "images/c2.jpg",
            nome: "Popi",
            raca: "Vira-lata",
            idade: "6 anos",
          ),

          InfoDog(
            image: "images/c3.jpeg",
            nome: "Toby",
            raca: "Vira-lata",
            idade: "2 anos",
          ),

          InfoDog(
            image: "images/c4.jpeg",
            nome: "Toby",
            raca: "Vira-lata",
            idade: "2 anos",
          ),
        ],
      ),
    );
  }
}
