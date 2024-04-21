import '../models/algoritmo.dart';

final List<Algoritmo> algoritmos = [
  Algoritmo(
    nome: 'Decision Tree',
    tipoDeDados: ['Todos'],
    volumeDeDados: 'Pequeno-Médio',
    explicabilidade: 'Alta',
    performance: 'Média',
    tipoDeTarefa: 'Classificação/Regressão',
  ),
  Algoritmo(
    nome: 'Random Forest',
    tipoDeDados: ['Todos'],
    volumeDeDados: 'Médio-Grande',
    explicabilidade: 'Média',
    performance: 'Alta',
    tipoDeTarefa: 'Classificação/Regressão',
  ),
  Algoritmo(
    nome: 'K-Means',
    tipoDeDados: ['Numéricos'],
    volumeDeDados: 'Médio-Grande',
    explicabilidade: 'Baixa',
    performance: 'Média-Alta',
    tipoDeTarefa: 'Clustering',
  ),
  Algoritmo(
    nome: 'CNN (Convolutional Neural Network)',
    tipoDeDados: ['Imagens'],
    volumeDeDados: 'Grande',
    explicabilidade: 'Baixa',
    performance: 'Alta',
    tipoDeTarefa: 'Classificação/Reconhecimento de Imagens',
  ),
  Algoritmo(
    nome: 'SVM (Support Vector Machine)',
    tipoDeDados: ['Todos'],
    volumeDeDados: 'Médio',
    explicabilidade: 'Média',
    performance: 'Alta',
    tipoDeTarefa: 'Classificação/Regressão',
  ),
  Algoritmo(
    nome: 'Linear Regression',
    tipoDeDados: ['Numéricos'],
    volumeDeDados: 'Médio',
    explicabilidade: 'Alta',
    performance: 'Média',
    tipoDeTarefa: 'Regressão',
  ),
  Algoritmo(
    nome: 'Logistic Regression',
    tipoDeDados: ['Categóricos', 'Numéricos'],
    volumeDeDados: 'Pequeno-Médio',
    explicabilidade: 'Média',
    performance: 'Média',
    tipoDeTarefa: 'Classificação',
  ),
  Algoritmo(
    nome: 'Naive Bayes',
    tipoDeDados: ['Categóricos'],
    volumeDeDados: 'Pequeno-Médio',
    explicabilidade: 'Média',
    performance: 'Média',
    tipoDeTarefa: 'Classificação',
  ),
  Algoritmo(
    nome: 'PCA (Principal Component Analysis)',
    tipoDeDados: ['Numéricos'],
    volumeDeDados: 'Médio',
    explicabilidade: 'Alta',
    performance: 'N/A',
    tipoDeTarefa: 'Redução de Dimensionalidade',
  ),
  Algoritmo(
    nome: 'LSTM (Long Short-Term Memory)',
    tipoDeDados: ['Textuais', 'Sequenciais'],
    volumeDeDados: 'Grande',
    explicabilidade: 'Baixa',
    performance: 'Alta',
    tipoDeTarefa: 'Predição de Sequência/Classificação',
  ),
  Algoritmo(
    nome: 'Gradient Boosting',
    tipoDeDados: ['Todos'],
    volumeDeDados: 'Médio-Grande',
    explicabilidade: 'Média',
    performance: 'Alta',
    tipoDeTarefa: 'Classificação/Regressão',
  ),
  Algoritmo(
    nome: 'DBSCAN',
    tipoDeDados: ['Numéricos'],
    volumeDeDados: 'Médio-Grande',
    explicabilidade: 'Baixa',
    performance: 'Média',
    tipoDeTarefa: 'Clustering',
  ),
  Algoritmo(
    nome: 'AdaBoost',
    tipoDeDados: ['Todos'],
    volumeDeDados: 'Médio',
    explicabilidade: 'Média',
    performance: 'Alta',
    tipoDeTarefa: 'Classificação',
  ),
  Algoritmo(
    nome: 'GAN (Generative Adversarial Network)',
    tipoDeDados: ['Imagens', 'Textuais'],
    volumeDeDados: 'Grande',
    explicabilidade: 'Baixa',
    performance: 'Alta',
    tipoDeTarefa: 'Geração de Dados',
  ),
  Algoritmo(
    nome: 'XGBoost',
    tipoDeDados: ['Todos'],
    volumeDeDados: 'Médio-Grande',
    explicabilidade: 'Média',
    performance: 'Muito Alta',
    tipoDeTarefa: 'Classificação/Regressão',
  ),
];