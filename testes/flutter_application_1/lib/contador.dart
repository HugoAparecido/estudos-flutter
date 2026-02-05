import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int _numero = 0;

  void _incrementar() {
    setState(() {
      _numero++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Contagem: $_numero', style: const TextStyle(fontSize: 24)),
        ElevatedButton(onPressed: _incrementar, child: const Text('Aumentar')),
      ],
    );
  }
}
