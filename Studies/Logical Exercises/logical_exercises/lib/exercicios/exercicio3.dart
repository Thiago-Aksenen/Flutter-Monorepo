import 'package:flutter/material.dart';
import 'package:logical_exercises/component/tile_todo.dart';

class Exercicio3 extends StatefulWidget {
  const Exercicio3({super.key});

  @override
  State<Exercicio3> createState() => _Exercicio3State();
}

class _Exercicio3State extends State<Exercicio3> {
  TextEditingController textController = TextEditingController();
  List<TileTodo> lista = [
    TileTodo(titulo: "Lembrete 1"),
    TileTodo(titulo: "Lembrete 2"),
    TileTodo(titulo: "Lembrete 3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text(
                "Qual o título da nota?",
                style: TextStyle(fontSize: 20),
              ),
              content: TextField(controller: textController),
              actions: [
                TextButton(
                  onPressed: () {
                    textController.clear();
                    Navigator.pop(context);
                  },
                  child: Text("Cancelar"),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      lista.add(TileTodo(titulo: textController.text));
                    });
                    Navigator.pop(context);
                  },
                  child: Text("Salvar"),
                ),
              ],
            ),
          );
        },
        icon: Icon(Icons.add),
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.blue[500]),
        ),
        color: Colors.white,
      ),
      appBar: AppBar(
        title: Text("Lista de tarefas (mini to-do)"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: ListView.builder(
            itemBuilder: (context, index) => lista[index],
            itemCount: lista.length,
          ),
        ),
      ),
    );
  }
}
