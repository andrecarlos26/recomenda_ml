import 'package:flutter/material.dart';

// Defina a cor como uma constante
const Color appBarBackgroundColor = Color(0xFF0D47A1);

class ConceitosScreen extends StatefulWidget {
  const ConceitosScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ConceitosScreenState createState() => _ConceitosScreenState();
}

class _ConceitosScreenState extends State<ConceitosScreen> {
  final TextStyle textStyle = const TextStyle(
    fontSize: 16,
    color: Colors.black,
    height: 1.4,
  );

  final TextStyle bulletPointStyle = const TextStyle(
    fontSize: 16,
    color: Colors.black,
    height: 1.4,
  );

  static const Color borderColor = Color.fromARGB(255, 198, 219, 224);
  final List<bool> _isOpen = List<bool>.filled(16, false); // Ajustado para suportar novos tópicos

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conceitos de ML'),
        backgroundColor: appBarBackgroundColor, // Utilizando a mesma cor de fundo
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
          color: Colors.white,
        ),
      ),
      body: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ListView(
          padding: const EdgeInsets.all(8.0),
          children: <Widget>[
            _buildExpansionTile(
              context,
              title: 'Árvore de Decisão',
              imagePath: 'assets/images/dt.png',
              index: 0,
              children: [
                const Text('Este algoritmo modela decisões com suas possíveis consequências, incluindo resultados de eventos, custos de recursos e utilidade. É uma estrutura em forma de árvore, onde cada nó interno representa um "teste" em um atributo, cada ramificação representa o resultado do teste, e cada nó folha (ou terminal) contém uma etiqueta de classe. A ideia é partir de um conceito simples e ir dividindo o problema em questões mais específicas.'),
                const Text('Ou seja:'),
                _buildBulletPoint('Árvores de Decisão são modelos preditivos formados por estruturas de nós de decisão e nós folha. Cada nó interno representa um teste em um atributo e cada nó folha representa uma classe.'),
                _buildBulletPoint('Utilizam abordagens do tipo "dividir para conquistar", onde o dado é dividido em subconjuntos mais pequenos enquanto se desenha a árvore.'),
                _buildBulletPoint('São úteis para compreensão intuitiva de dados e são base para algoritmos mais complexos, como Florestas Aleatórias.\n'),
                Image.asset('assets/images/dt.png'),
              ],
            ),
            _buildExpansionTile(
              context,
              title: 'Regressão Logística',
              imagePath: 'assets/images/rl.png',
              index: 1,
              children: [
                const Text('Usado principalmente para classificação binária, este modelo estima a probabilidade de uma variável dependente binária. Baseia-se na função logística, que mapeia qualquer valor real em um valor entre 0 e 1. Em outras palavras, ele prevê a probabilidade de uma instância pertencer a uma classe.'),
                const Text('Ou seja:'),
                _buildBulletPoint('A Regressão Logística estima a probabilidade de uma variável dependente com base em uma ou mais variáveis independentes, sendo utilizada para classificação binária.'),
                _buildBulletPoint('O modelo utiliza a função logística para atribuir valores de entrada entre 0 e 1, interpretados como probabilidades.'),
                _buildBulletPoint('Apesar da simplicidade, é altamente eficiente e amplamente utilizada para problemas de classificação.\n'),
                Image.asset('assets/images/rl.png'),
              ],
            ),
            _buildExpansionTile(
              context,
              title: 'KNN',
              imagePath: 'assets/images/knn.png',
              index: 2,
              children: [
                const Text('Este é um algoritmo de aprendizado supervisionado simples e eficaz que encontra o grupo de "K" instâncias mais próximas (i.e., vizinhos) no conjunto de dados de treinamento, e faz previsões com base em quão semelhantes são as instâncias próximas. Pode ser usado para classificação, onde a classe mais comum entre os vizinhos é atribuída ao ponto de teste, ou para regressão, onde a média dos valores dos vizinhos é utilizada.'),
                const Text('Ou seja:'),
                _buildBulletPoint('KNN é um algoritmo que classifica os pontos de dados com base na proximidade dos dados de treinamento.'),
                _buildBulletPoint("Não há modelo explícito; as previsões são feitas identificando os 'K' vizinhos mais próximos do ponto de dados."),
                _buildBulletPoint('É simples e eficaz, mas pode tornar-se mais lento à medida que o tamanho do conjunto de dados aumenta.\n'),
                Image.asset('assets/images/knn.png'),
              ],
            ),
            _buildExpansionTile(
              context,
              title: 'Floresta Aleatória',
              imagePath: 'assets/images/fl.png',
              index: 3,
              children: [
                const Text('Melhoria das árvores de decisão, este algoritmo constrói várias árvores durante o treinamento e faz suas previsões com base na média ou na maioria dos resultados de todas as árvores. Isso reduz o risco de sobreajuste dos dados e melhora a precisão da previsão.'),
                const Text('Ou seja:'),
                _buildBulletPoint('Florestas Aleatórias constroem múltiplas árvores de decisão e fundem suas previsões para melhorar a precisão e controlar o sobreajuste.'),
                _buildBulletPoint('Cada árvore na floresta é construída a partir de uma amostra aleatória do conjunto de dados.'),
                _buildBulletPoint('Oferece melhor desempenho e robustez do que uma única árvore de decisão.\n'),
                Image.asset('assets/images/fl.png'),
              ],
            ),
            _buildExpansionTile(
              context,
              title: 'SVM',
              imagePath: 'assets/images/svm.png',
              index: 4,
              children: [
                const Text('Destinado a encontrar o hiperplano que melhor divide um conjunto de dados em classes. O objetivo é maximizar a margem entre os pontos mais próximos de cada classe, conhecidos como vetores de suporte. Pode ser utilizado para classificação e regressão.'),
                const Text('Ou seja:'),
                _buildBulletPoint('SVM busca encontrar o hiperplano que melhor separa as classes de dados.'),
                _buildBulletPoint('Maximiza a margem entre as classes, onde os pontos mais próximos desta margem são os vetores de suporte.'),
                _buildBulletPoint('É eficaz em espaços de alta dimensão e em casos onde o número de dimensões é maior que o número de amostras.\n'),
                Image.asset('assets/images/svm.png'),
              ],
            ),
            _buildExpansionTile(
              context,
              title: 'CNN',
              imagePath: 'assets/images/cnn.png',
              index: 5,
              children: [
                const Text('Especialmente poderoso para processar dados que têm uma grade como topologia, como imagens. Uma CNN usa uma arquitetura de camadas que inclui camadas convolucionais, de pooling e totalmente conectadas para processar e transformar progressivamente os dados de entrada, capturando padrões importantes para fazer previsões, particularmente úteis em tarefas de visão computacional.'),
                const Text('Ou seja:'),
                _buildBulletPoint('CNNs são especializadas para processar dados estruturados em grade, como imagens, usando camadas convolucionais.'),
                _buildBulletPoint('Utilizam filtros para capturar padrões espaciais e temporais nos dados através de operações de convolução.'),
                _buildBulletPoint('São poderosas em tarefas de visão computacional, como reconhecimento de imagem e vídeo.\n'),
                Image.asset('assets/images/cnn.png'),
              ],
            ),
            // Adição dos novos algoritmos
            _buildExpansionTile(
              context,
              title: 'K-Means',
              imagePath: 'assets/images/kmeans.png',
              index: 6,
              children: [
                const Text('Algoritmo de agrupamento que particiona os dados em K clusters. Cada cluster é representado pela média (centroide) dos pontos dentro do cluster. O objetivo é minimizar a soma das distâncias quadradas entre os pontos e seus centróides correspondentes.'),
                const Text('Ou seja:'),
                _buildBulletPoint('K-Means agrupa os dados em K clusters, onde cada cluster é definido pela média dos pontos nele contidos.'),
                _buildBulletPoint('É útil para descoberta de grupos em grandes conjuntos de dados.'),
                _buildBulletPoint('Pode ser sensível à escolha dos centróides iniciais e à presença de outliers.\n'),
                Image.asset('assets/images/kmeans.png'),
              ],
            ),
            _buildExpansionTile(
              context,
              title: 'Regressão Linear',
              imagePath: 'assets/images/linear_regression.png',
              index: 7,
              children: [
                const Text('Modelo estatístico que assume uma relação linear entre a variável dependente e uma ou mais variáveis independentes. É usado para prever valores contínuos.'),
                const Text('Ou seja:'),
                _buildBulletPoint('A Regressão Linear assume uma relação linear entre variáveis, utilizada para prever valores contínuos.'),
                _buildBulletPoint('O modelo é simples, fácil de interpretar e amplamente utilizado.'),
                _buildBulletPoint('Pode ser influenciado por outliers e não captura relações não lineares.\n'),
                Image.asset('assets/images/linear_regression.png'),
              ],
            ),
            _buildExpansionTile(
              context,
              title: 'Naive Bayes',
              imagePath: 'assets/images/naive_bayes.png',
              index: 8,
              children: [
                const Text('Algoritmo de classificação baseado no Teorema de Bayes com a suposição de independência entre os atributos. É eficiente e eficaz para grandes conjuntos de dados.'),
                const Text('Ou seja:'),
                _buildBulletPoint('Naive Bayes classifica dados com base no Teorema de Bayes, assumindo independência entre atributos.'),
                _buildBulletPoint('É rápido, eficiente e funciona bem com grandes conjuntos de dados.'),
                _buildBulletPoint('A suposição de independência pode não ser realista em todos os casos.\n'),
                Image.asset('assets/images/naive_bayes.png'),
              ],
            ),
            _buildExpansionTile(
              context,
              title: 'PCA (Principal Component Analysis)',
              imagePath: 'assets/images/pca.png',
              index: 9,
              children: [
                const Text('Técnica de redução de dimensionalidade que transforma os dados em um novo sistema de coordenadas, onde as maiores variâncias são representadas nas primeiras componentes principais.'),
                const Text('Ou seja:'),
                _buildBulletPoint('PCA reduz a dimensionalidade dos dados, transformando-os em um novo sistema de coordenadas.'),
                _buildBulletPoint('As componentes principais capturam a maior variância nos dados, facilitando a visualização e análise.'),
                _buildBulletPoint('Pode perder alguma informação ao reduzir as dimensões.\n'),
                Image.asset('assets/images/pca.png'),
              ],
            ),
            _buildExpansionTile(
              context,
              title: 'LSTM (Long Short-Term Memory)',
              imagePath: 'assets/images/lstm.png',
              index: 10,
              children: [
                const Text('Um tipo de rede neural recorrente (RNN) que é capaz de aprender dependências de longo prazo. É especialmente útil em tarefas de previsão de séries temporais e processamento de linguagem natural.'),
                const Text('Ou seja:'),
                _buildBulletPoint('LSTMs são RNNs avançadas que aprendem dependências de longo prazo.'),
                _buildBulletPoint('São eficazes em previsão de séries temporais e processamento de linguagem natural.'),
                _buildBulletPoint('Podem ser complexas de treinar devido à sua arquitetura sofisticada.\n'),
                Image.asset('assets/images/lstm.png'),
              ],
            ),
            _buildExpansionTile(
              context,
              title: 'Gradient Boosting',
              imagePath: 'assets/images/gradient_boosting.png',
              index: 11,
              children: [
                const Text('Algoritmo de boosting que constrói modelos de forma sequencial, onde cada novo modelo corrige os erros dos modelos anteriores. É poderoso e utilizado em muitas competições de machine learning.'),
                const Text('Ou seja:'),
                _buildBulletPoint('Gradient Boosting constrói modelos de forma sequencial, corrigindo erros dos modelos anteriores.'),
                _buildBulletPoint('É altamente eficaz e frequentemente usado em competições de machine learning.'),
                _buildBulletPoint('Pode ser sensível a ruídos e outliers nos dados.\n'),
                Image.asset('assets/images/gradient_boosting.png'),
              ],
            ),
            _buildExpansionTile(
              context,
              title: 'DBSCAN',
              imagePath: 'assets/images/dbscan.png',
              index: 12,
              children: [
                const Text('Algoritmo de clustering baseado em densidade que descobre clusters de forma arbitrária e identifica outliers como pontos de dados que não pertencem a nenhum cluster.'),
                const Text('Ou seja:'),
                _buildBulletPoint('DBSCAN identifica clusters baseados em densidade e outliers.'),
                _buildBulletPoint('É capaz de encontrar clusters de formas arbitrárias.'),
                _buildBulletPoint('Pode não funcionar bem com dados de densidade variada.\n'),
                Image.asset('assets/images/dbscan.png'),
              ],
            ),
            _buildExpansionTile(
              context,
              title: 'AdaBoost',
              imagePath: 'assets/images/adaboost.png',
              index: 13,
              children: [
                const Text('Algoritmo de boosting que combina vários classificadores fracos para formar um forte. Cada classificador é treinado com mais ênfase nos erros dos classificadores anteriores.'),
                const Text('Ou seja:'),
                _buildBulletPoint('AdaBoost combina classificadores fracos para formar um classificador forte.'),
                _buildBulletPoint('Dá mais peso aos erros dos classificadores anteriores em cada iteração.'),
                _buildBulletPoint('Pode ser sensível a outliers.\n'),
                Image.asset('assets/images/adaboost.png'),
              ],
            ),
            _buildExpansionTile(
              context,
              title: 'GAN (Generative Adversarial Network)',
              imagePath: 'assets/images/gan.png',
              index: 14,
              children: [
                const Text('Modelo de rede neural que consiste em duas redes: uma geradora e uma discriminadora. A geradora cria dados falsos e a discriminadora tenta distingui-los dos dados reais. O objetivo é treinar a geradora para criar dados indistinguíveis dos reais.'),
                const Text('Ou seja:'),
                _buildBulletPoint('GANs consistem em duas redes que se competem: a geradora e a discriminadora.'),
                _buildBulletPoint('A geradora cria dados falsos que a discriminadora tenta distinguir dos reais.'),
                _buildBulletPoint('São usadas em geração de imagens, vídeos e outros dados sintéticos.\n'),
                Image.asset('assets/images/gan.png'),
              ],
            ),
            _buildExpansionTile(
              context,
              title: 'XGBoost',
              imagePath: 'assets/images/xgboost.png',
              index: 15,
              children: [
                const Text('Uma implementação otimizada de gradient boosting que é amplamente utilizada por sua velocidade e desempenho em competições de machine learning.'),
                const Text('Ou seja:'),
                _buildBulletPoint('XGBoost é uma implementação otimizada de gradient boosting.'),
                _buildBulletPoint('Conhecida por sua velocidade e alto desempenho.'),
                _buildBulletPoint('Utilizada frequentemente em competições de machine learning.\n'),
                Image.asset('assets/images/xgboost.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExpansionTile(BuildContext context, {required String title, required String imagePath, required int index, required List<Widget> children}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: _isOpen[index] ? borderColor : Colors.transparent,
          width: 3.0,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ExpansionTile(
        title: Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
        onExpansionChanged: (bool expanded) {
          setState(() {
            _isOpen[index] = expanded;
          });
        },
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: children.map((child) => Align(
                alignment: Alignment.centerLeft,
                child: child is Text ?
                  Text(child.data ?? '', style: textStyle, textAlign: TextAlign.justify)
                  : child,
              )).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 5.0, right: 6.0),
            child: Icon(Icons.brightness_1, size: 6.0, color: Colors.black),
          ),
          Expanded(
            child: Text(text, style: bulletPointStyle, textAlign: TextAlign.justify),
          ),
        ],
      ),
    );
  }
}
