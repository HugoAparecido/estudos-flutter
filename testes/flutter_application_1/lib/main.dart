import 'package:flutter/material.dart';
import 'package:flutter_application_1/contador.dart';
import 'package:flutter_application_1/custom_progress_bar.dart';
import 'package:flutter_application_1/custom_toggle.dart';
import 'package:flutter_application_1/meu_botao.dart';

void main() {
  runApp(const MaterialApp(home: HomePage()));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Teste de componente')),
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
            Text(
              _isToggled ? "Ativado" : "Desativado",
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            CustomToggle(
              value: _isToggled,
              onChanged: (newValue) {
                setState(() {
                  _isToggled = newValue;
                });
              },
            ),
            CustomProgressBar(progress: 1),
          ],
        ),
      ),
    );
  }
}
