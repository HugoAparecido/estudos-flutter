void main() {
  List<String> nomes = ['Daniel', 'Hugo', 'Henrique'];

  print(nomes);

  List<int> idades = [];

  idades.add(4);
  idades.add(466);

  idades.addAll([567, 25, 4634]);
  idades.insert(2, -2);

  print(idades.contains(56));
  print(idades.indexOf(4));

  print(idades.remove(-4));
  print(idades.removeAt(3));

  idades.shuffle();

  print(idades);
}
