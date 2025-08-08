import 'package:flutter/material.dart';
import 'package:todoapp/components/my_button.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  VoidCallback saveTask;
  VoidCallback cancelTask;

  DialogBox({
    super.key,
    required this.controller,
    required this.cancelTask,
    required this.saveTask,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: SizedBox(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Add a new task",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //save
                MyButton(text: "Save", onPressed: saveTask),
                SizedBox(width: 10),
                //cancel
                MyButton(text: "Cancel", onPressed: cancelTask),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
