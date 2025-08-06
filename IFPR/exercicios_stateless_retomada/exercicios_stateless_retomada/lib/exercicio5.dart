import 'package:flutter/material.dart';

class Exercicio5 extends StatelessWidget {
  const Exercicio5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber, title: Text("Exericio 5")),
      body: SizedBox(
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            SizedBox(
              width: 200,
              child: ListTile(
                leading: Icon(Icons.headset_rounded),
                title: Text(
                  "Item 1 da lista",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                subtitle: Text("Subtitulo da lista"),
              ),
            ),

            SizedBox(
              width: 200,
              child: ListTile(
                leading: Icon(Icons.access_time),
                title: Text("Item 2 da lista"),
                subtitle: Text("Subtitulo 2"),
              ),
            ),

            SizedBox(
              width: 200,
              child: ListTile(
                leading: Icon(Icons.add_alert_outlined),
                title: Text(
                  "Item 1 da lista",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                subtitle: Text("Subtitulo da lista"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
