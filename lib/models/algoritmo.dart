class Algoritmo {
  final String nome;
  final List<String> tipoDeDados;
  final List<String> volumeDeDados;
  final List<String> explicabilidade;
  final List<String> performance;
  final List<String> tipoDeTarefa;
  final String descricao; // Nova propriedade
  final String motivo; // Nova propriedade

  Algoritmo({
    required this.nome,
    required this.tipoDeDados,
    required this.volumeDeDados,
    required this.explicabilidade,
    required this.performance,
    required this.tipoDeTarefa,
    required this.descricao, // Inicializa a nova propriedade
    required this.motivo, // Inicializa a nova propriedade
  });
}
