import 'package:flutter/material.dart';

class MeuBotao extends StatelessWidget {
  final String texto;
  final Color cor;
  final VoidCallback onPressed;

  const MeuBotao({
    super.key,
    required this.texto,
    required this.cor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: cor),
      onPressed: onPressed,
      child: Text(
        texto,
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
