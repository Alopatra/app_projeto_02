import 'package:app_projeto_02/view/AboutScreen.dart';
import 'package:app_projeto_02/view/ForgotPasswordStep1.dart';
import 'package:app_projeto_02/view/ForgotPasswordStep2.dart';
import 'package:app_projeto_02/view/RecipeDetailIngredients.dart';
import 'package:app_projeto_02/view/RecipeDetailPreparation.dart';
import 'package:app_projeto_02/view/RecipesScreen.dart';
import 'package:app_projeto_02/view/login_view.dart';
import 'package:app_projeto_02/view/signup_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Receitas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 249, 216, 156),
      ),
      
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/forgot1': (context) => const ForgotPasswordStep1(),
        '/forgot2': (context) => const ForgotPasswordStep2(),
        '/about': (context) => const AboutScreen(),
        '/recipes': (context) => const RecipesScreen(),
        '/ingredients': (context) => const RecipeDetailIngredients(),
        '/preparation': (context) => const RecipeDetailPreparation(),
      },
    );
  }
}
