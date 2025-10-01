import 'package:flutter/material.dart';

class RecipeDetailIngredients extends StatelessWidget {
const RecipeDetailIngredients({super.key});

@override
Widget build(BuildContext context) {
// Ingredientes de exemplo
  final List<String> ingredients = [
  "2 xícaras de farinha de trigo",
  "1 xícara de açúcar",
  "1/2 xícara de óleo",
  "3 ovos",
  "1 colher de fermento em pó",
  ];

return Scaffold(
appBar: AppBar(title: const Text("Ingredientes")),
body: Padding(
padding: const EdgeInsets.all(20),
child: ListView.builder(
itemCount: ingredients.length,
itemBuilder: (context, index) {
return ListTile(
leading: const Icon(Icons.check_circle_outline, color: Colors.green),
title: Text(ingredients[index]),
);
},
),
),
floatingActionButton: FloatingActionButton(
onPressed: () {
Navigator.pushNamed(context, '/preparation');
},
child: const Icon(Icons.arrow_forward),
),
);
}
}
