import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tictactoe/model/cell.dart';
import 'package:tictactoe/model/game_result.dart';
import 'package:tictactoe/model/position.dart';
import 'package:tictactoe/presentation/notifier/tictactoe_game_notifier.dart';
import 'package:tictactoe/presentation/notifier/tictactoe_game_state.dart';
import 'package:tictactoe/presentation/ui/cross_painter.dart';
import 'package:tictactoe/presentation/ui/nought_painter.dart';
import 'package:tictactoe/presentation/ui/tictactoe_cell.dart';

import '../../mock.dart';
import '../../util.dart';

void main() {
  group('TictactoeCell', () {
    testWidgets('renders CrossPainter for CrossCell and NoughtPainter for NoughtCell', (tester) async {
      await tester.pumpWidget(
        buildTestableWidget(
          const Row(
            children: [
              TictactoeCell(cell: Cell.cross(Position(0, 0))),
              TictactoeCell(cell: Cell.nought(Position(0, 1))),
            ],
          ),
          overrides: [tictactoeGameProvider.overrideWith(TictactoeGameNotifier.new)],
        ),
      );

      final customPaints = tester.widgetList<CustomPaint>(find.byType(CustomPaint)).toList();
      expect(customPaints.any((p) => p.painter is CrossPainter), isTrue);
      expect(customPaints.any((p) => p.painter is NoughtPainter), isTrue);
    });

    testWidgets('renders nothing for EmptyCell', (tester) async {
      await tester.pumpWidget(
        buildTestableWidget(
          const TictactoeCell(cell: Cell.empty(Position(0, 0))),
          overrides: [tictactoeGameProvider.overrideWith(TictactoeGameNotifier.new)],
        ),
      );

      expect(find.byType(CrossPainter), findsNothing);
      expect(find.byType(NoughtPainter), findsNothing);
    });

    testWidgets('changes background color when cell is a winning cell', (tester) async {
      final notifier = TictactoeGameNotifier();
      final winningGame = MockTictactoeGame();
      const winningPosition = Position(0, 0);
      when(() => winningGame.result).thenReturn(const GameResult.crossWins(winningPositions: [winningPosition]));

      await tester.pumpWidget(
        buildTestableWidget(
          const TictactoeCell(cell: Cell.cross(winningPosition)),
          overrides: [tictactoeGameProvider.overrideWith(() => notifier)],
        ),
      );

      final containerBefore = tester.widget<AnimatedContainer>(find.byType(AnimatedContainer));
      final decorationBefore = containerBefore.decoration! as BoxDecoration;
      final colorBefore = decorationBefore.color;

      notifier.state = TictactoeGameState(game: winningGame);
      await tester.pumpAndSettle();

      final containerAfter = tester.widget<AnimatedContainer>(find.byType(AnimatedContainer));
      final decorationAfter = containerAfter.decoration! as BoxDecoration;
      final colorAfter = decorationAfter.color;

      expect(colorAfter, isNot(equals(colorBefore)));
    });
  });
}
