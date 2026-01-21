void main() {
  String nome = funcao(8) ?? 'Não informado';
  print(nome.toUpperCase());
}

String? funcao(int x) {
  if (x > 10) {
    return 'Olá mundo!';
  }
  return null;
}
