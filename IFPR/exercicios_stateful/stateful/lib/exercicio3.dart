import 'package:flutter/material.dart';

class Exercicio3 extends StatefulWidget {
  const Exercicio3({super.key});

  @override
  State<Exercicio3> createState() => _Exercicio3State();
}

class _Exercicio3State extends State<Exercicio3> {
  List<NavigationDestination> bottomCoisas = [
    NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
    NavigationDestination(icon: Icon(Icons.add), label: 'Somar'),
    NavigationDestination(icon: Icon(Icons.person), label: 'Saudação'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(destinations: bottomCoisas),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Icon(Icons.star, color: Colors.white),
            SizedBox(width: 10),
            Text(
              "Exercício 3",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
