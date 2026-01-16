void main() {
  saudacoes(
    'Hugo',
    corpo: (int i) {
      for (int j = 0; j < i; j++) {
        print('Olá $j');
      }
    },
  );
}

void saudacoes(
  String nome, {
  bool mostrarAgora = true,
  String? cliente,
  required Function(int) corpo,
}) {
  print('Saudações do ${nome.toUpperCase()}');

  corpo(10);

  String c = cliente ?? 'Não informado';

  print('Seja bem-veindo(a)!, ${c.toUpperCase()}');

  if (mostrarAgora) {
    print('Agora: ${agora()}');
  }
}

String agora() {
  DateTime agora = DateTime.now();
  return agora.toString();
}
