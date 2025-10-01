import 'package:flutter/material.dart';

class ForgotPasswordStep1 extends StatelessWidget {
  const ForgotPasswordStep1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Recuperar Senha - Passo 1")),
      
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Digite seu e-mail para receber o código de recuperação",
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20),
            
            const TextField(
              decoration: InputDecoration(labelText: "Email"),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/forgot2');
              },
              child: const Text("Enviar código"),
            ),
          ],
        ),
      ),
    );
  }
}