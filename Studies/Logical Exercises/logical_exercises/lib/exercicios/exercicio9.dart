import 'package:flutter/material.dart';

class Exercicio9 extends StatefulWidget {
  const Exercicio9({super.key});

  @override
  State<Exercicio9> createState() => _Exercicio9State();
}

class _Exercicio9State extends State<Exercicio9> {
  int valor = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Botão contador duplo"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
        ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.blue[700],
          ),
          height: 550,
          width: 350,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Text(
                  "Valor atual:",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  valor.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 120),
                ),
                Expanded(child: Container()),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            valor = valor + 2;
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            Colors.blue[900],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("+2",style: TextStyle(color: Colors.white,fontSize: 18),),
                        ),
                      ),

                      TextButton(
                        onPressed: () {
                          setState(() {
                            valor = valor + 5;
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            Colors.blue[200],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("+5",style: TextStyle(color: Colors.blue[900],fontSize: 18),),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
