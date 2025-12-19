import 'package:flutter/material.dart';
import 'package:tictactoe/presentation/ui/score_detail.dart';

class ScoreContainer extends StatelessWidget {
  const ScoreContainer({required this.children, super.key});

  final List<ScoreDetail> children;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceEvenly,
      spacing: 16,
      children: children,
    );
  }
}
