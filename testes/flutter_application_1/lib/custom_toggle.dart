import 'package:flutter/material.dart';

class CustomToggle extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const CustomToggle({super.key, required this.value, required this.onChanged});

  @override
  State<CustomToggle> createState() => _CustomToggleState();
}

class _CustomToggleState extends State<CustomToggle> {
  @override
  Widget build(BuildContext constext) {
    return GestureDetector(
      onTap: () => widget.onChanged(!widget.value),
      child: AnimatedContainer(
        duration: const Duration(microseconds: 300),
        height: 40,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: widget.value ? Colors.green : Colors.grey,
        ),
        child: Stack(
          children: [
            AnimatedAlign(
              alignment: widget.value
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              duration: const Duration(microseconds: 300),
              child: Container(
                width: 32,
                height: 32,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
