import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tictactoe/model/game_result.dart';
import 'package:tictactoe/presentation/notifier/tictactoe_game_notifier.dart';
import 'package:tictactoe/presentation/notifier/tictactoe_game_state.dart';
import 'package:tictactoe/presentation/ui/tictactoe_replay.dart';

import '../../mock.dart';

void main() {
  final drawGame = MockTictactoeGame();
  final onGoingGame = MockTictactoeGame();
  final crossWinsGame = MockTictactoeGame();
  final noughtWinsGame = MockTictactoeGame();

  setUp(() {
    when(() => drawGame.result).thenReturn(const GameResult.draw());
    when(() => onGoingGame.result).thenReturn(const GameResult.ongoing());
    when(() => crossWinsGame.result).thenReturn(
      const GameResult.crossWins(
        winningPositions: [],
      ),
    );
    when(() => noughtWinsGame.result).thenReturn(
      const GameResult.noughtWins(
        winningPositions: [],
      ),
    );
  });
  group('TictactoeReplay Widget Tests', () {
    testWidgets('displays New Game button based on gameResult', (WidgetTester tester) async {
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
              body: TictactoeReplay(),
            ),
          ),
        ),
      );

      expect(find.text('New Game').hitTestable(), findsNothing);

      tictactoeGameNotifier.state = TictactoeGameState(
        game: drawGame,
      );

      await tester.pumpAndSettle();

      expect(find.text('New Game').hitTestable(), findsOneWidget);

      tictactoeGameNotifier.state = TictactoeGameState(
        game: crossWinsGame,
      );

      await tester.pumpAndSettle();

      expect(find.text('New Game').hitTestable(), findsOneWidget);

      tictactoeGameNotifier.state = TictactoeGameState(
        game: noughtWinsGame,
      );

      await tester.pumpAndSettle();

      expect(find.text('New Game').hitTestable(), findsOneWidget);
    });
  });
}
