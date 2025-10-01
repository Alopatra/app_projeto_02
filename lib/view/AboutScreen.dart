import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sobre")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.restaurant_menu, size: 80, color: Colors.deepPurple),

            const SizedBox(height: 20),

            const Text(
              "App de Receitas",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            const Text(
              "Este aplicativo foi desenvolvido para ajudar você a organizar "
              "e descobrir receitas de forma simples e prática.\n\n"
              "Aqui você encontra opções de pratos, ingredientes detalhados "
              "e o passo a passo do preparo.",
              textAlign: TextAlign.center,
            ),

            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Voltar"),
            )
          ],
        ),
      ),
    );
  }
}
