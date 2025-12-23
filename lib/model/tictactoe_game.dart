import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/model/cell.dart';
import 'package:tictactoe/model/game_result.dart';
import 'package:tictactoe/model/position.dart';

part 'tictactoe_game.freezed.dart';
part 'tictactoe_game.g.dart';

@freezed
abstract class TictactoeGame with _$TictactoeGame {
  const factory TictactoeGame({@Default(TictactoeGame.startingBoard) List<Cell> board}) = _TictactoeGame;
  const TictactoeGame._();

  factory TictactoeGame.fromJson(Map<String, dynamic> json) => _$TictactoeGameFromJson(json);

  @visibleForTesting
  static const List<Cell> startingBoard = [
    Cell.empty(Position(0, 0)),
    Cell.empty(Position(0, 1)),
    Cell.empty(Position(0, 2)),
    Cell.empty(Position(1, 0)),
    Cell.empty(Position(1, 1)),
    Cell.empty(Position(1, 2)),
    Cell.empty(Position(2, 0)),
    Cell.empty(Position(2, 1)),
    Cell.empty(Position(2, 2)),
  ];

  @visibleForTesting
  static const List<List<Position>> winningPositions = [
    [Position(0, 0), Position(0, 1), Position(0, 2)],
    [Position(1, 0), Position(1, 1), Position(1, 2)],
    [Position(2, 0), Position(2, 1), Position(2, 2)],
    [Position(0, 0), Position(1, 0), Position(2, 0)],
    [Position(0, 1), Position(1, 1), Position(2, 1)],
    [Position(0, 2), Position(1, 2), Position(2, 2)],
    [Position(0, 0), Position(1, 1), Position(2, 2)],
    [Position(0, 2), Position(1, 1), Position(2, 0)],
  ];

  TictactoeGame play(Cell updatedCell) {
    final updatedBoard = board
        .map((cell) => (cell.position == updatedCell.position && cell is EmptyCell) ? updatedCell : cell)
        .toList();

    return TictactoeGame(board: updatedBoard);
  }

  GameResult get result {
    if (getWinningPositions<CrossCell>() case final nonNullPositions?) {
      return GameResult.crossWins(winningPositions: nonNullPositions);
    } else if (getWinningPositions<NoughtCell>() case final nonNullPositions?) {
      return GameResult.noughtWins(winningPositions: nonNullPositions);
    } else if (board.every((cell) => cell is! EmptyCell)) {
      return const GameResult.draw();
    }

    return const GameResult.ongoing();
  }

  @visibleForTesting
  List<Position>? getWinningPositions<T extends Cell>() {
    return winningPositions.firstWhereOrNull(
      (positions) => positions.every((position) => board.firstWhere((cell) => cell.position == position) is T),
    );
  }

  List<List<Cell>> get rows {
    return [
      board.sublist(0, 3),
      board.sublist(3, 6),
      board.sublist(6, 9),
    ];
  }
}
