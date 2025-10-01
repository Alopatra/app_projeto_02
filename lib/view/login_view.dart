import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login"), backgroundColor: Colors.blue,),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 75),

            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset(
                'lib/images/Livro de receitas.png',
                fit: BoxFit.cover,
              ),
            ),

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
                Navigator.pushNamed(context, '/recipes');
              },
              child: const Text("Entrar"),
            ),

            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: const Text("Não tem conta? Cadastre-se"),
            ),

            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/forgot1');
              },
              child: const Text("Esqueceu a senha?"),
            ),
          ],
        ),
      ),
    );
  }
}
