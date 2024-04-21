import 'package:flutter/material.dart';
import '../models/algoritmo.dart';
import '../data/algoritmos_data.dart';

class RecomendacaoScreen extends StatelessWidget {
  final String tipoDeDados;
  final String volumeDeDados;
  final String explicabilidade;
  final String performance;
  final String tipoDeTarefa;

  RecomendacaoScreen({
    required this.tipoDeDados,
    required this.volumeDeDados,
    required this.explicabilidade,
    required this.performance,
    required this.tipoDeTarefa,
  });

  List<Algoritmo> filtrarAlgoritmos() {
    return algoritmos.where((algoritmo) {
      return algoritmo.tipoDeDados.contains(tipoDeDados) &&
             algoritmo.volumeDeDados == volumeDeDados &&
             algoritmo.explicabilidade == explicabilidade &&
             algoritmo.performance == performance &&
             algoritmo.tipoDeTarefa.contains(tipoDeTarefa);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    List<Algoritmo> algoritmosRecomendados = filtrarAlgoritmos();

    return Scaffold(
      appBar: AppBar(
        title: Text('Recomendação de Algoritmo'),
      ),
      body: algoritmosRecomendados.isNotEmpty
          ? ListView.builder(
              itemCount: algoritmosRecomendados.length,
              itemBuilder: (context, index) {
                Algoritmo algoritmo = algoritmosRecomendados[index];
                return ListTile(
                  title: Text(algoritmo.nome),
                  subtitle: Text('Tipo de Tarefa: ${algoritmo.tipoDeTarefa}'),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text(algoritmo.nome),
                        content: Text('Detalhes adicionais sobre o algoritmo...'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: Text('Fechar'),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            )
          : Center(
              child: Text('Nenhum algoritmo encontrado para os critérios selecionados.'),
            ),
    );
  }
}
