import 'package:flutter/material.dart';

class Exercicio10 extends StatefulWidget {
  const Exercicio10({super.key});

  @override
  State<Exercicio10> createState() => _Exercicio10State();
}

class _Exercicio10State extends State<Exercicio10> {
  TextEditingController controller = TextEditingController();
  String textoInvertido = "";
  bool isInvertido = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reversor de texto"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(60.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              isInvertido
                  ? Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Resultado:",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(textoInvertido),
                        ],
                      ),
                    )
                  : SizedBox.shrink(),

              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hint: Text("Escreva uma frase:"),
                    ),
                    maxLength: 100,
                    controller: controller,
                  ),
                  SizedBox(height: 8),
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.blue[800]),
                      minimumSize: WidgetStatePropertyAll(Size(120, 40)),
                    ),
                    onPressed: () {
                      List<String> caracteres = controller.text.split('');
                      String invertido = "";
                      for (var i = 0; i < caracteres.length; i++) {
                        invertido =
                            invertido + caracteres[(caracteres.length - i) - 1];
                        // invertido = invertido+caracteres[i];
                      }
                      setState(() {
                        isInvertido = true;
                        textoInvertido = invertido;
                      });
                    },
                    child: Text(
                      "inverter",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
