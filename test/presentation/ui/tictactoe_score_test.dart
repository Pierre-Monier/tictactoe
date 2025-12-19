import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tictactoe/model/score.dart';
import 'package:tictactoe/presentation/notifier/tictactoe_game_notifier.dart';
import 'package:tictactoe/presentation/notifier/tictactoe_game_state.dart';
import 'package:tictactoe/presentation/ui/tictactoe_score.dart';

void main() {
  group('TictactoeScore Widget Tests', () {
    testWidgets('updates displayed text when score state changes', (WidgetTester tester) async {
      final tictactoeGameNotifier = TictactoeGameNotifier();

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            tictactoeGameProvider.overrideWith(
              () => tictactoeGameNotifier,
            ),
          ],
          child: const MaterialApp(
            home: Scaffold(
              body: TictactoeScore(),
            ),
          ),
        ),
      );

      expect(find.text('0'), findsWidgets);

      const updatedScore = Score(
        crossWins: 5,
        noughtWins: 3,
        draws: 2,
      );

      tictactoeGameNotifier.state = const TictactoeGameState(
        score: updatedScore,
      );

      await tester.pumpAndSettle();

      expect(find.text('5'), findsOneWidget);
      expect(find.text('3'), findsOneWidget);
      expect(find.text('2'), findsOneWidget);
    });
  });
}
