import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tictactoe/model/game_result.dart';
import 'package:tictactoe/model/player.dart';
import 'package:tictactoe/presentation/notifier/tictactoe_game_notifier.dart';
import 'package:tictactoe/presentation/notifier/tictactoe_game_state.dart';
import 'package:tictactoe/presentation/ui/tictactoe_alert.dart';

import '../../mock.dart';
import '../../util.dart';

void main() {
  final drawGame = MockTictactoeGame();
  final crossWinsGame = MockTictactoeGame();
  final noughtWinsGame = MockTictactoeGame();

  setUp(() {
    when(() => drawGame.result).thenReturn(const GameResult.draw());
    when(() => crossWinsGame.result).thenReturn(const GameResult.crossWins(winningPositions: []));
    when(() => noughtWinsGame.result).thenReturn(const GameResult.noughtWins(winningPositions: []));
  });

  group('TictactoeAlert', () {
    group('ongoing game result', () {
      testWidgets('displays "X turn" when current player is cross', (tester) async {
        final notifier = TictactoeGameNotifier();

        await tester.pumpWidget(
          buildTestableWidget(
            const TictactoeAlert(),
            overrides: [tictactoeGameProvider.overrideWith(() => notifier)],
          ),
        );

        await tester.pumpAndSettle();

        expect(find.text('X turn'), findsOneWidget);
      });

      testWidgets('displays "O turn" when current player is nought', (tester) async {
        final notifier = TictactoeGameNotifier();

        await tester.pumpWidget(
          buildTestableWidget(
            const TictactoeAlert(),
            overrides: [tictactoeGameProvider.overrideWith(() => notifier)],
          ),
        );

        notifier.state = const TictactoeGameState(currentPlayer: Player.nought);

        await tester.pumpAndSettle();

        expect(find.text('O turn'), findsOneWidget);
      });
    });

    testWidgets('displays "its a draw" when game result is draw', (tester) async {
      final notifier = TictactoeGameNotifier();

      await tester.pumpWidget(
        buildTestableWidget(
          const TictactoeAlert(),
          overrides: [tictactoeGameProvider.overrideWith(() => notifier)],
        ),
      );

      notifier.state = TictactoeGameState(game: drawGame);

      await tester.pumpAndSettle();

      expect(find.text('its a draw'), findsOneWidget);
    });

    testWidgets('displays "Cross wins" when game result is crossWins', (tester) async {
      final notifier = TictactoeGameNotifier();

      await tester.pumpWidget(
        buildTestableWidget(
          const TictactoeAlert(),
          overrides: [tictactoeGameProvider.overrideWith(() => notifier)],
        ),
      );

      notifier.state = TictactoeGameState(game: crossWinsGame);

      await tester.pumpAndSettle();

      expect(find.text('Cross wins'), findsOneWidget);
    });

    testWidgets('displays "Nought wins" when game result is noughtWins', (tester) async {
      final notifier = TictactoeGameNotifier();

      await tester.pumpWidget(
        buildTestableWidget(
          const TictactoeAlert(),
          overrides: [tictactoeGameProvider.overrideWith(() => notifier)],
        ),
      );

      notifier.state = TictactoeGameState(game: noughtWinsGame);

      await tester.pumpAndSettle();

      expect(find.text('Nought wins'), findsOneWidget);
    });
  });
}
