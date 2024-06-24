import 'package:flutter/material.dart';
import '../models/algoritmo.dart';
import '../data/algoritmos_data.dart';

class RecomendacaoScreen extends StatelessWidget {
  final String tipoDeDados;
  final String volumeDeDados;
  final String explicabilidade;
  final String performance;
  final String tipoDeTarefa;

  const RecomendacaoScreen({
    super.key,
    required this.tipoDeDados,
    required this.volumeDeDados,
    required this.explicabilidade,
    required this.performance,
    required this.tipoDeTarefa,
  });

  List<Algoritmo> filtrarAlgoritmos() {
    return algoritmos.where((algoritmo) {
      int score = 0;

      if (algoritmo.tipoDeDados.contains(tipoDeDados)) score++;
      if (algoritmo.volumeDeDados.contains(volumeDeDados)) score++;
      if (algoritmo.explicabilidade.contains(explicabilidade)) score++;
      if (algoritmo.performance.contains(performance)) score++;
      if (algoritmo.tipoDeTarefa.contains(tipoDeTarefa)) score++;
      
      return score >= 4;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    List<Algoritmo> algoritmosRecomendados = filtrarAlgoritmos();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Recomendação de Algoritmo'),
        iconTheme: const IconThemeData(color: Colors.white), // Define a cor da seta de voltar para branca
      ),
      body: algoritmosRecomendados.isNotEmpty
          ? ListView.builder(
              itemCount: algoritmosRecomendados.length,
              itemBuilder: (context, index) {
                Algoritmo algoritmo = algoritmosRecomendados[index];
                return Card(
                  margin: const EdgeInsets.all(10),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(15),
                    title: Text(
                      algoritmo.nome,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Tipo de Tarefa: ${algoritmo.tipoDeTarefa}',
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    trailing: const Icon(Icons.info_outline, color: Colors.blue),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text(
                            algoritmo.nome,
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Descrição:',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                algoritmo.descricao,
                                style: const TextStyle(fontSize: 16),
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                'Por que se encaixa nas opções selecionadas:',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                algoritmo.motivo,
                                style: const TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: const Text('Fechar'),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                );
              },
            )
          : const Center(
              child: Text(
                'Nenhum algoritmo encontrado para os critérios selecionados.',
                style: TextStyle(fontSize: 18),
              ),
            ),
    );
  }
}
