import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tictactoe/presentation/ui/score_detail.dart';

import '../../util.dart';

void main() {
  group('ScoreDetail', () {
    testWidgets('displays label and value', (tester) async {
      await tester.pumpWidget(
        buildTestableWidget(const ScoreDetail(label: 'Wins', value: 42)),
      );

      expect(find.text('Wins'), findsOneWidget);
      expect(find.text('42'), findsOneWidget);
    });

    testWidgets('applies color to value text when provided', (tester) async {
      await tester.pumpWidget(
        buildTestableWidget(const ScoreDetail(label: 'Wins', value: 5, color: Colors.red)),
      );

      final valueText = tester.widget<Text>(find.text('5'));
      expect(valueText.style?.color, Colors.red);
    });
  });
}
