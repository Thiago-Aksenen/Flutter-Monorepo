import 'package:flutter/material.dart';
import 'package:todoapp/components/dialog_box.dart';
import 'package:todoapp/components/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //text controller
  final _controller = TextEditingController();

  //List of todo Taks
  List toDoList = [
    ["Make Tutorial", false],
    ["Make Examples", false],
  ];

  //CheckBox was tapped
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  //button inside the dialogBox
  void saveNewTask() {
    setState(() {
      toDoList.add([_controller.text, false]);
    });
    Navigator.of(context).pop();
    _controller.text = "";
  }

  //method of the button that create a new Taks
  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          saveTask: saveNewTask,
          cancelTask: Navigator.of(context).pop,
        );
      },
    );
  }

  //if use slidable to remove the task, you need this:
  void deleteTask(int index) {
    setState(() {
      toDoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(title: Center(child: Text("TO DO"))),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,
        onPressed: createNewTask,
        child: Icon(Icons.add),
      ),

      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return TodoTile(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: (context) => deleteTask(index),
          );
        },
      ),
    );
  }
}
