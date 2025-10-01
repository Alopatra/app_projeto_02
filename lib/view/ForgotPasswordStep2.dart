import 'package:flutter/material.dart';

class ForgotPasswordStep2 extends StatelessWidget {
const ForgotPasswordStep2({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: const Text("Recuperar Senha - Passo 2")),
body: Padding(
padding: const EdgeInsets.all(20),
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
const Text(
"Digite o código recebido no seu e-mail",
textAlign: TextAlign.center,
),
const SizedBox(height: 20),
const TextField(
decoration: InputDecoration(labelText: "Código de recuperação"),
),
const SizedBox(height: 20),
const TextField(
decoration: InputDecoration(labelText: "Nova senha"),
obscureText: true,
),
const SizedBox(height: 20),
ElevatedButton(
onPressed: () {
Navigator.pushReplacementNamed(context, '/login');
},
child: const Text("Confirmar nova senha"),
),
],
),
),
);
}
}
