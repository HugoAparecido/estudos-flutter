import 'package:flutter/material.dart';

class AvaiacoesEstrelas extends StatelessWidget {
  final double nota;

  const AvaiacoesEstrelas({super.key, required this.nota});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [for (int i = 1; i <= 5; i++) _construirEstrela(i)],
    );
  }

  Widget _construirEstrela(int index) {
    IconData icone;

    if (nota >= index) {
      icone = Icons.star;
    } else if (nota >= index - 0.5) {
      icone = Icons.star_half;
    } else {
      icone = Icons.star_border;
    }

    return Icon(icone, color: Colors.amber, size: 24.0);
  }
}
