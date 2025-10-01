import 'package:flutter/material.dart';

class RecipeDetailPreparation extends StatelessWidget {
  const RecipeDetailPreparation({super.key});

  @override
    Widget build(BuildContext context) {
    // Passos de preparo de exemplo
    final List<String> steps = [
      "Misture a farinha e o açúcar em uma tigela.",
      "Adicione os ovos e o óleo, mexendo bem.",
      "Incorpore o fermento delicadamente.",
      "Despeje a massa em uma forma untada.",
      "Asse por 40 minutos em forno pré-aquecido a 180°C.",
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Modo de Preparo")),
      body: Padding(
        padding: const EdgeInsets.all(20),

        child: ListView.builder(
          itemCount: steps.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.deepPurple,
                child: Text(
                  "${index + 1}",
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              title: Text(steps[index]),
            );
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.popUntil(context, ModalRoute.withName('/recipes'));
        },
        child: const Icon(Icons.home),
      ),
    );
  }
}
