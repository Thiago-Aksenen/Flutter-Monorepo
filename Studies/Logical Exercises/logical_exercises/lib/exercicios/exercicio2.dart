import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Exercicio2 extends StatefulWidget {
  const Exercicio2({super.key});

  @override
  State<Exercicio2> createState() => _Exercicio2State();
}

class _Exercicio2State extends State<Exercicio2> {
  int? valor;
  String resultado = "não é um número!";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Número par ou ímpar"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Center(
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
                      "O Valor digitado:",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        valor?.toString() ?? "Nenhum",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 120, // tamanho máximo
                        ),
                      ),
                    ),
        
                    Text(
                      resultado,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
        
                    SizedBox(height: 200),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Digite seu número aqui:",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        setState(() {
                          if (value.isEmpty) {
                            valor = null;
                            resultado = "não é um número!";
                          } else {
                            final parsed = int.tryParse(value);
                            if (parsed == null) {
                              valor = null;
                              resultado = "Número grande demais!";
                              value = "0";
                            } else {
                              valor = parsed;
                              if (valor!.isEven) {
                                resultado = "é par!";
                              } else {
                                resultado = "é ímpar!";
                              }
                            }
                          }
                        });
                      },
        
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
