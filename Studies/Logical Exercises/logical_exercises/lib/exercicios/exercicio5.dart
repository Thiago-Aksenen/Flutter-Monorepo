import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Exercicio5 extends StatefulWidget {
  const Exercicio5({super.key});

  @override
  State<Exercicio5> createState() => _Exercicio5State();
}

class _Exercicio5State extends State<Exercicio5> {
  int numero = 0;
  TextEditingController controllerT = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tabuada"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Digite um valor para ver a tabuada:"),
            SizedBox(
              height: 100,
              width: 70,

              child: TextField(
                controller: controllerT,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    if (value.isEmpty) {
                      controllerT.text = "0";
                    }
                    numero = int.parse(controllerT.text);
                  });
                },

                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...List.generate(
                      5,
                      (index) => Text(
                        "${index + 1} * $numero = ${(index + 1) * numero}",
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...List.generate(
                      5,
                      (index) => Text(
                        "${index + 6} * $numero = ${(index + 6) * numero}",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
