import 'package:flutter/material.dart';
import 'screens/questionario_screen.dart';
import 'screens/welcome_screen.dart';
import 'screens/conceitos_screen.dart'; // Certifique-se de que o caminho até o arquivo está correto
import 'theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recomendador de algoritmos de ML',
      theme: appTheme(),
      // Defina a rota inicial para a tela de boas-vindas
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),  // Rota para a tela de boas-vindas
        '/questionario': (context) => const QuestionarioScreen(),  // Rota para a tela de questionário
        '/conceitos': (context) => const ConceitosScreen(), // Rota para a tela de conceitos
      },
    );
  }
}
