import 'package:flutter/material.dart';
import 'package:logical_exercises/views/view_exercises.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  final List<NavigationDestination> destinations = [
    NavigationDestination(icon: Icon(Icons.home), label: "Projects"),
    NavigationDestination(icon: Icon(Icons.book), label: "Exercises"),
  ];

  final List<Widget> paginas = [Text("pagina 1"),ViewExercises()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Página principal",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.black87, Colors.indigo],
            ),
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: destinations,
        selectedIndex: selectedIndex,
        onDestinationSelected: (int value) {
          setState(() {
            selectedIndex = value;
          });
        },
      ),
      body: paginas[selectedIndex],
    );
  }
}
