import 'package:flutter/material.dart';

class CrossPainter extends CustomPainter {
  const CrossPainter({required this.color});
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 8
      ..style = PaintingStyle.stroke;

    final center = Offset(size.width / 2, size.height / 2);
    final crossSize = size.width / 4;

    canvas
      ..drawLine(
        Offset(center.dx - crossSize, center.dy - crossSize),
        Offset(center.dx + crossSize, center.dy + crossSize),
        paint,
      )
      ..drawLine(
        Offset(center.dx - crossSize, center.dy + crossSize),
        Offset(center.dx + crossSize, center.dy - crossSize),
        paint,
      );
  }

  @override
  bool shouldRepaint(covariant CrossPainter oldDelegate) {
    return color != oldDelegate.color;
  }
}
