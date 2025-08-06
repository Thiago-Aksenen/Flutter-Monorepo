import 'package:flutter/material.dart';
import 'package:stateful/exercicio1.dart';
import 'package:stateful/exercicio2.dart';

class Exercicio4 extends StatefulWidget {
  const Exercicio4({super.key});

  @override
  State<Exercicio4> createState() => _Exercicio4State();
}

class _Exercicio4State extends State<Exercicio4> {
  List<NavigationDestination> bottomCoisas = [
    NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
    NavigationDestination(icon: Icon(Icons.add), label: 'Somar'),
    NavigationDestination(icon: Icon(Icons.person), label: 'Saudação'),
  ];

  final List<Widget> _paginas = [Container(), Exercicio1(), Exercicio2()];

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        destinations: bottomCoisas,
        selectedIndex: _selectedIndex,
        onDestinationSelected: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
      ),

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Icon(Icons.star, color: Colors.white),
            SizedBox(width: 10),
            Text(
              "Exercício 4",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: _paginas[_selectedIndex],
    );
  }
}
