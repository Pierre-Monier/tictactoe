import 'package:flutter/material.dart';

class NoughtPainter extends CustomPainter {
  const NoughtPainter({required this.color});
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 8
      ..style = PaintingStyle.stroke;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 4;

    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(covariant NoughtPainter oldDelegate) {
    return color != oldDelegate.color;
  }
}
