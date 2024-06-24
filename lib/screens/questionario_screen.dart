import 'package:flutter/material.dart';
import 'recomendacao_screen.dart'; // Substitua pelo caminho correto até seu arquivo

// Utilize a constante de cor definida
const Color appBarBackgroundColor = Color(0xFF0D47A1);

class QuestionarioScreen extends StatefulWidget {
  const QuestionarioScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _QuestionarioScreenState createState() => _QuestionarioScreenState();
}

class _QuestionarioScreenState extends State<QuestionarioScreen> {
  String? _tipoDeDadosSelecionado;
  String? _volumeDeDadosSelecionado;
  String? _explicabilidadeSelecionada;
  String? _performanceSelecionada;
  String? _tipoDeTarefaSelecionado;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Questionário de ML'),
        backgroundColor: appBarBackgroundColor, // Utilizando a mesma cor de fundo
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
          color: Colors.white, // Define a cor do ícone como branca
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildQuestionContainer(
                question: "Qual o tipo de dados?",
                options: ['Numéricos', 'Categóricos', 'Textuais', 'Imagens'],
                value: _tipoDeDadosSelecionado,
                onChanged: (val) => setState(() => _tipoDeDadosSelecionado = val),
                iconData: Icons.pie_chart_outline, // Ícone para tipo de dados
              ),
              _buildQuestionContainer(
                question: "Qual o volume de dados?",
                options: ['Pequeno', 'Médio', 'Grande'],
                value: _volumeDeDadosSelecionado,
                onChanged: (val) => setState(() => _volumeDeDadosSelecionado = val),
                iconData: Icons.storage, // Ícone para volume de dados
              ),
              _buildQuestionContainer(
                question: "Qual o nível de explicabilidade desejada?",
                options: ['Alta', 'Média', 'Baixa'],
                value: _explicabilidadeSelecionada,
                onChanged: (val) => setState(() => _explicabilidadeSelecionada = val),
                iconData: Icons.lightbulb_outline, // Ícone para explicabilidade
              ),
              _buildQuestionContainer(
                question: "Qual o nível de performance desejada?",
                options: ['Alta', 'Média', 'Baixa'],
                value: _performanceSelecionada,
                onChanged: (val) => setState(() => _performanceSelecionada = val),
                iconData: Icons.speed, // Ícone para performance
              ),
              _buildQuestionContainer(
                question: "Qual o tipo de tarefa?",
                options: ['Classificação', 'Regressão', 'Clustering', 'Detecção de Anomalias'],
                value: _tipoDeTarefaSelecionado,
                onChanged: (val) => setState(() => _tipoDeTarefaSelecionado = val),
                iconData: Icons.task_alt, // Ícone para tipo de tarefa
              ),
              ElevatedButton(
                onPressed: () => _navigateToRecommendation(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 29, 160, 153),
                ),
                child: const Text('Recomendar Algoritmo'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQuestionContainer({
    required String question,
    required List<String> options,
    required String? value,
    required void Function(String?) onChanged,
    required IconData iconData,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Icon(iconData, color: Colors.blue), // Ícone relacionado à pergunta
            title: Text(question, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue)),
            tileColor: Colors.white, // Garante que o fundo do ListTile combine com o Container
          ),
          ...options.map((option) => RadioListTile<String>(
                title: Text(option),
                value: option,
                groupValue: value,
                onChanged: onChanged,
                activeColor: Colors.blue,
              )),
        ],
      ),
    );
  }

  void _navigateToRecommendation() {
    if (_tipoDeDadosSelecionado != null &&
        _volumeDeDadosSelecionado != null &&
        _explicabilidadeSelecionada != null &&
        _performanceSelecionada != null &&
        _tipoDeTarefaSelecionado != null) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => RecomendacaoScreen(
          tipoDeDados: _tipoDeDadosSelecionado!,
          volumeDeDados: _volumeDeDadosSelecionado!,
          explicabilidade: _explicabilidadeSelecionada!,
          performance: _performanceSelecionada!,
          tipoDeTarefa: _tipoDeTarefaSelecionado!,
        ),
      ));
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Aviso'),
          content: const Text('Por favor, responda todas as perguntas antes de continuar.'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }
}
