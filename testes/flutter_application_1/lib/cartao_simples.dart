import 'package:flutter/material.dart';
import 'package:flutter_application_1/avaliacao_estelas.dart';

class CartaoSimples extends StatelessWidget {
  final String titulo;
  final String descricao;
  final double nota;

  const CartaoSimples({
    super.key,
    required this.titulo,
    required this.descricao,
    required this.nota,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue[50],
      elevation: 2, // Sombra do card
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          titulo,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        AvaiacoesEstrelas(nota: nota),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text(descricao, style: const TextStyle(fontSize: 16)),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Fechar Leitura'),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Padding(
          padding: const EdgeInsetsGeometry.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min, // Ocupa apenas o espaço necessário
            children: [
              Text(
                titulo,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(descricao, style: const TextStyle(color: Colors.white)),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    nota.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  AvaiacoesEstrelas(nota: nota),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
