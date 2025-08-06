import 'package:flutter/material.dart';
// import 'package:stateful/exercicio1.dart';
// import 'package:stateful/exercicio2.dart';
// import 'package:stateful/exercicio3.dart';
import 'package:stateful/exercicio4.dart';

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
      home: const Exercicio4(),
    );
  }
}
