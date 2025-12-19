import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tictactoe/model/game_result.dart';
import 'package:tictactoe/model/tictactoe_game.dart';
import 'package:tictactoe/presentation/notifier/tictactoe_game_notifier.dart';
import 'package:tictactoe/presentation/notifier/tictactoe_game_state.dart';
import 'package:tictactoe/presentation/ui/tictactoe_board.dart';
import 'package:tictactoe/presentation/ui/tictactoe_cell.dart';

import '../../mock.dart';
import '../../util.dart';

void main() {
  group('TictactoeBoard', () {
    testWidgets('renders 9 cells', (tester) async {
      await tester.pumpWidget(
        buildTestableWidget(
          const TictactoeBoard(),
          overrides: [tictactoeGameProvider.overrideWith(TictactoeGameNotifier.new)],
        ),
      );

      expect(find.byType(TictactoeCell), findsNWidgets(9));
    });

    testWidgets('blocks interaction when game is finished', (tester) async {
      final notifier = TictactoeGameNotifier();
      final finishedGame = MockTictactoeGame();
      when(() => finishedGame.result).thenReturn(const GameResult.crossWins(winningPositions: []));
      when(() => finishedGame.rows).thenReturn(TictactoeGame.startingBoard.slices(3).toList());

      await tester.pumpWidget(
        buildTestableWidget(
          const TictactoeBoard(),
          overrides: [tictactoeGameProvider.overrideWith(() => notifier)],
        ),
      );

      final findBoardAbsorbPointer = find.descendant(of: find.byType(TictactoeBoard), matching: find.byType(AbsorbPointer));

      final absorbPointerBefore = tester.widget<AbsorbPointer>(findBoardAbsorbPointer);
      expect(absorbPointerBefore.absorbing, isFalse);

      notifier.state = TictactoeGameState(game: finishedGame);
      await tester.pumpAndSettle();

      final absorbPointerAfter = tester.widget<AbsorbPointer>(findBoardAbsorbPointer);
      expect(absorbPointerAfter.absorbing, isTrue);
    });
  });
}
