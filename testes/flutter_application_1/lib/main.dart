import 'package:flutter/material.dart';
import 'package:flutter_application_1/cartao_simples.dart';

void main() {
  runApp(const MaterialApp(home: HomePage()));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Teste de componente')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CartaoSimples(
              titulo: 'João Silva',
              descricao: 'Ótimo serviço, recomendo a todos!',
              nota: 0.5,
            ),
          ],
        ),
      ),
    );
  }
}
