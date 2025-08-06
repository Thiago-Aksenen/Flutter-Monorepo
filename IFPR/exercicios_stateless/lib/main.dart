// import 'package:exercicios_stateless/exercicio1.dart';
// import 'package:exercicios_stateless/exercicio2.dart';
// import 'package:exercicios_stateless/exercicio3.dart';
// import 'package:exercicios_stateless/exercicio4.dart';
// import 'package:exercicios_stateless/exercicio5.dart';
import 'package:exercicios_stateless/exercicio6.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Exercicio6(),
    );
  }
}
