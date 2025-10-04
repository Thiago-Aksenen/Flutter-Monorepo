import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Exercicio7 extends StatefulWidget {
  const Exercicio7({super.key});

  @override
  State<Exercicio7> createState() => _Exercicio7State();
}

class _Exercicio7State extends State<Exercicio7> {
  String palavra = "teste";
  bool? verificador;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Verificador de palíndromo"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              palavra.isNotEmpty
                  ? verificador == false
                        ? Text("A palavra $palavra não um palíndromo!")
                        : Text("A palavra $palavra é um palíndromo!")
                  : SizedBox.shrink(),

              TextField(
                decoration: InputDecoration(hint: Text("Escreva uma palavra:")),
                maxLength: 18,
                controller: controller,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[a-zA-ZÀ-ÿ]')),
                ],
              ),
              SizedBox(height: 8),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blue[800]),
                  minimumSize: WidgetStatePropertyAll(Size(120, 40)),
                ),
                onPressed: () {
                  if (controller.text.isNotEmpty) {
                    palavra = controller.text;
                    List<String> letras = palavra.split('');
                    bool verifica = true;

                    if (letras.length.isEven) {
                      for (var i = 0; i < letras.length / 2; i++) {
                        if (letras[i] != (letras[(letras.length - 1) - i])) {
                          verifica = false;
                          break;
                        }
                      }
                    } else {
                      for (var i = 0; i < letras.length ~/ 2; i++) {
                        if (letras[i] != (letras[(letras.length - 1) - i])) {
                          verifica = false;
                          break;
                        }
                      }
                    }
                    setState(() {
                      verificador = verifica;
                    });
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text("Digite uma palavra!"),
                        content: Text("O valor digitado não é válido!"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Ok"),
                          ),
                        ],
                      ),
                    );
                  }
                },
                child: Text("Testar", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
