import 'package:flutter/material.dart';
import 'package:flutter_application_1/contador.dart';
import 'package:flutter_application_1/meu_botao.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MeuBotao(
                texto: "Clique Aqui",
                cor: Colors.blue,
                onPressed: () => print('Botão clicado!'),
              ),
              const SizedBox(height: 20),
              const Contador(),
            ],
          ),
        ),
      ),
    );
  }
}
