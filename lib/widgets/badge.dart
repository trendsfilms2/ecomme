import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  final Widget child;
  final String value;
  final Color color;

  const Badge({
    super.key,
    required this.child,
    required this.value,
    this.color = Colors.red,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        child,
        Positioned(
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10),
            ),
            constraints: const BoxConstraints(
              minWidth: 16,
              minHeight: 16,
            ),
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 10,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
