import 'package:flutter/material.dart';

class ScoreDetail extends StatelessWidget {
  const ScoreDetail({required this.label, required this.value, this.color, super.key});

  final String label;
  final int value;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colors = Theme.of(context).colorScheme;

    return Column(
      children: [
        Text(
          label,
          style: textTheme.bodyMedium?.copyWith(color: colors.tertiary),
        ),
        Text(
          '$value',
          style: textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold, color: color),
        ),
      ],
    );
  }
}
