void main() {
  List<String> nomes = [];

  nomes = funcao(nomes);

  print(nomes);
}

List<String> funcao(List<String> lista) {
  return lista
    ..add('Hugo')
    ..add('Aparecido')
    ..remove('Hugo');
}
