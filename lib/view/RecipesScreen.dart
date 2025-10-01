import 'package:flutter/material.dart';

class RecipesScreen extends StatelessWidget {
  const RecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de receitas (placeholder por enquanto)
    final List<String> recipes = [
      "Bolo de Chocolate",
      "Lasanha de Frango",
      "Arroz de Forno",
      "Feijoada",
      "Torta de Limão",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Receitas"),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              Navigator.pushNamed(context, '/about');
            },
          ),
        ],
      ),

      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            child: ListTile(
              title: Text(recipes[index]),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Navigator.pushNamed(context, '/ingredients');
              },
            ),
          );
        },
      ),
    );
  }
}
