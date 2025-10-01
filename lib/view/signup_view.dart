import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
const SignupScreen({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: const Text("Cadastro")),
body: Padding(
padding: const EdgeInsets.all(20),
child: SingleChildScrollView(
child: Column(
children: [
const TextField(
decoration: InputDecoration(labelText: "Nome"),
),
const SizedBox(height: 10),
const TextField(
decoration: InputDecoration(labelText: "Email"),
),
const SizedBox(height: 10),
const TextField(
decoration: InputDecoration(labelText: "Senha"),
obscureText: true,
),
const SizedBox(height: 20),
ElevatedButton(
onPressed: () {
Navigator.pushReplacementNamed(context, '/login');
},
child: const Text("Cadastrar"),
),
],
),
),
),
);
}
}