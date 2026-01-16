void main() {
  saudacoes('Hugo');
  saudacoes('Hugo Aparecido', mostrarAgora: false);
}

void saudacoes(String nome, {bool mostrarAgora = true, String sep = '-'}) {
  print(sep * 20);
  print('Saudações do $nome');
  print('Seja bem-veindo(a)!');
  if (mostrarAgora) {
    print('Agora: ${agora()}');
  }
}

String agora() {
  DateTime agora = DateTime.now();
  return agora.toString();
}
