import 'package:flutter/material.dart';

class Exercicio1 extends StatefulWidget {
  const Exercicio1({super.key});

  @override
  State<Exercicio1> createState() => _Exercicio1State();
}

class _Exercicio1State extends State<Exercicio1> {
  bool calculo = false;
  double resultado = 0;
  final TextEditingController _controllerA = TextEditingController();
  final TextEditingController _controllerB = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   title: Row(
      //     children: [
      //       Icon(Icons.star, color: Colors.white),
      //       SizedBox(width: 10),
      //       Text(
      //         "Exercício 1",
      //         style: TextStyle(
      //           color: Colors.white,
      //           fontWeight: FontWeight.bold,1
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            if (calculo == true)
              SizedBox(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Text("O valor da soma é de $resultado")],
                ),
              ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 50,
                  width: 140,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Digite o valor A',
                    ),
                    controller: _controllerA,
                  ),
                ),

                Text("+"),

                SizedBox(
                  height: 50,
                  width: 140,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Digite o valor B',
                    ),
                    controller: _controllerB,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: FilledButton(
                onPressed: () {
                  setState(() {
                    calculo = true;
                    double a = double.parse(_controllerA.text);
                    double b = double.parse(_controllerB.text);
                    resultado = a + b;
                  });
                },
                child: Text("Somar!"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
