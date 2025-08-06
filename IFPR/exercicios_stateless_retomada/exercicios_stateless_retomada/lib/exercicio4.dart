import 'package:flutter/material.dart';

class Exercicio4 extends StatelessWidget {
  const Exercicio4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber, title: Text("Exericio 4")),
      body: Center(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.headset_rounded),
              title: Text(
                "Item 1 da lista",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              subtitle: Text("Subtitulo da lista"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.access_time_filled_outlined),
              title: Text(
                "Item 2 da lista",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              subtitle: Text("Subtitulo da lista"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.account_circle_rounded),
              title: Text(
                "Item 3 da lista",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              subtitle: Text("Subtitulo da lista"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.add_a_photo_outlined),
              title: Text(
                "Item 4 da lista",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              subtitle: Text("Subtitulo da lista"),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
