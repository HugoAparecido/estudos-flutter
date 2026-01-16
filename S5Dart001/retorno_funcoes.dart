void main() {
  saudacoes();
}

void saudacoes() {
  print('Saudações do Hugo Aparecido');
  print('Seja bem-veindo(a)!');
  print('Agora: ${agora()}');
}

String agora() {
  DateTime agora = DateTime.now();
  return agora.toString();
}
