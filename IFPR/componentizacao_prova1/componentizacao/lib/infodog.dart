import 'package:flutter/material.dart';

class InfoDog extends StatelessWidget {
  const InfoDog({
    super.key,
    required this.image,
    required this.nome,
    required this.raca,
    required this.idade,
  });
  final String image;
  final String nome;
  final String raca;
  final String idade;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 30, 40, 0),
      child: Column(
        children: [
          SizedBox(
            width: size.width,
            height: size.height * 0.20,
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.all(Radius.circular(15)),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                alignment: Alignment(0, -0.5),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(nome),
              Text(raca, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(idade),
              FilledButton(onPressed: () {}, child: Text("Adotar agora!")),
            ],
          ),
        ],
      ),
    );
  }
}
