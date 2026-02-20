import 'package:flutter/material.dart';

class CustomProgressBar extends StatelessWidget {
  final double progress;

  const CustomProgressBar({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          height: 12,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(6),
          ),
          child: Stack(
            children: [
              AnimatedContainer(
                duration: const Duration(microseconds: 500),
                width: constraints.minWidth * progress.clamp(0.0, 1.0),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
