import 'package:flutter_test/flutter_test.dart';
import 'package:tictactoe/model/cell.dart';
import 'package:tictactoe/model/game_result.dart';
import 'package:tictactoe/model/position.dart';
import 'package:tictactoe/model/tictactoe_game.dart';

void main() {
  group('TictactoeGame', () {
    test('should initialize with starting board', () {
      const game = TictactoeGame();

      expect(game.board, equals(TictactoeGame.startingBoard));
      expect(game.board.length, equals(9));
      expect(game.board.every((cell) => cell is EmptyCell), isTrue);
    });

    group('play', () {
      test('should update the board with valid cell position', () {
        const game = TictactoeGame();
        const updatedCell = Cell.cross(Position(0, 0));

        final newGame = game.play(updatedCell);

        expect(newGame.board.firstWhere((cell) => cell.position == const Position(0, 0)), equals(updatedCell));
        expect(newGame.board.whereType<CrossCell>().length, equals(1));
      });

      test('should return same game when position is not in board', () {
        const game = TictactoeGame();
        const invalidCell = Cell.cross(Position(5, 5));

        final newGame = game.play(invalidCell);

        expect(newGame, equals(game));
      });

      test('should not replace existing cell at position', () {
        const game = TictactoeGame();
        const cell1 = Cell.cross(Position(1, 1));
        const cell2 = Cell.nought(Position(1, 1));

        final game1 = game.play(cell1);
        final game2 = game1.play(cell2);

        expect(game1, equals(game2));
      });
    });

    group('getWinningPositions', () {
      test('should return horizontal win positions for first row (cross)', () {
        final game = const TictactoeGame()
            .play(const Cell.cross(Position(0, 0)))
            .play(const Cell.cross(Position(0, 1)))
            .play(const Cell.cross(Position(0, 2)));

        expect(
          game.getWinningPositions<CrossCell>(),
          equals(const [Position(0, 0), Position(0, 1), Position(0, 2)]),
        );
      });

      test('should return vertical win positions for first column (cross)', () {
        final game = const TictactoeGame()
            .play(const Cell.cross(Position(0, 0)))
            .play(const Cell.cross(Position(1, 0)))
            .play(const Cell.cross(Position(2, 0)));

        expect(
          game.getWinningPositions<CrossCell>(),
          equals(const [Position(0, 0), Position(1, 0), Position(2, 0)]),
        );
      });

      test('should return diagonal win positions (top-left to bottom-right) (cross)', () {
        final game = const TictactoeGame()
            .play(const Cell.cross(Position(0, 0)))
            .play(const Cell.cross(Position(1, 1)))
            .play(const Cell.cross(Position(2, 2)));

        expect(
          game.getWinningPositions<CrossCell>(),
          equals(const [Position(0, 0), Position(1, 1), Position(2, 2)]),
        );
      });

      test('should return null when no win condition is met', () {
        final game = const TictactoeGame()
            .play(const Cell.cross(Position(0, 0)))
            .play(const Cell.cross(Position(1, 1)));

        expect(game.getWinningPositions<CrossCell>(), isNull);
      });
    });
    group('result', () {
      test('should return ongoing when game just started', () {
        const game = TictactoeGame();

        expect(game.result, equals(const GameResult.ongoing()));
      });

      test('should return crossWins when cross has winning position', () {
        final game = const TictactoeGame()
            .play(const Cell.cross(Position(0, 0)))
            .play(const Cell.cross(Position(0, 1)))
            .play(const Cell.cross(Position(0, 2)));

        expect(
          game.result,
          equals(
            const GameResult.crossWins(
              winningPositions: [
                Position(0, 0),
                Position(0, 1),
                Position(0, 2),
              ],
            ),
          ),
        );
      });

      test('should return noughtWins when nought has winning position', () {
        final game = const TictactoeGame()
            .play(const Cell.nought(Position(1, 0)))
            .play(const Cell.nought(Position(1, 1)))
            .play(const Cell.nought(Position(1, 2)));

        expect(
          game.result,
          equals(
            const GameResult.noughtWins(
              winningPositions: [
                Position(1, 0),
                Position(1, 1),
                Position(1, 2),
              ],
            ),
          ),
        );
      });

      test('should return draw when board is full with no winner', () {
        final game = const TictactoeGame()
            .play(const Cell.cross(Position(0, 0)))
            .play(const Cell.nought(Position(0, 1)))
            .play(const Cell.cross(Position(0, 2)))
            .play(const Cell.cross(Position(1, 0)))
            .play(const Cell.nought(Position(1, 1)))
            .play(const Cell.cross(Position(1, 2)))
            .play(const Cell.nought(Position(2, 0)))
            .play(const Cell.cross(Position(2, 1)))
            .play(const Cell.nought(Position(2, 2)));

        expect(game.result, equals(const GameResult.draw()));
      });

      test('should return ongoing when board is partially filled with no winner', () {
        final game = const TictactoeGame()
            .play(const Cell.cross(Position(0, 0)))
            .play(const Cell.nought(Position(1, 1)))
            .play(const Cell.cross(Position(2, 2)));

        expect(game.result, equals(const GameResult.ongoing()));
      });
    });

    group('validateMove', () {
      test('should return false when newGame is the same as current game', () {
        const game = TictactoeGame();

        final isValid = game.validateMove<CrossCell>(game);

        expect(isValid, isFalse);
      });

      test('should return false when new game adds more than one change', () {
        const game = TictactoeGame();
        final newGame = game.play(const Cell.cross(Position(0, 0))).play(const Cell.cross(Position(1, 1)));

        final isValid = game.validateMove<CrossCell>(newGame);

        expect(isValid, isFalse);
      });

      test('should return false when the updated cell is not of type T', () {
        const game = TictactoeGame();
        final newGame = game.play(const Cell.nought(Position(0, 0)));

        final isValid = game.validateMove<CrossCell>(newGame);

        expect(isValid, isFalse);
      });

      test('should return false when the updated cell replaces a non-empty cell', () {
        const game = TictactoeGame();
        final gameWithCross = game.play(const Cell.cross(Position(0, 0)));
        final gameWithNought = gameWithCross.play(const Cell.nought(Position(0, 0)));

        final isValid = gameWithCross.validateMove<CrossCell>(gameWithNought);

        expect(isValid, isFalse);
      });

      test('should return true when valid move is made', () {
        const game = TictactoeGame();
        final newGame = game.play(const Cell.cross(Position(0, 0)));

        final isValid = game.validateMove<CrossCell>(newGame);

        expect(isValid, isTrue);
      });
    });
  });
}
