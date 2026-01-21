void main() {
  List<String> nomes = [
    'Daniel',
    'Hugo',
    'Henrique',
    'Giovana',
    'Marcos',
    'Eliane',
    'Mariane',
  ];

  print(nomes);

  //   for(int i = 2; i <= nomes.length - 1; i++){
  //     print(nomes[i].toUpperCase());
  //   }

  //   for (String nome in nomes.sublist(2, 4)) {
  //     print(nome.toUpperCase());
  //   }

  nomes.sublist(2).forEach((nome) {
    print(nome.toUpperCase());
  });
}
