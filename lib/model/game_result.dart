import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/model/cell.dart';
import 'package:tictactoe/model/position.dart';

part 'game_result.freezed.dart';

@freezed
sealed class GameResult with _$GameResult {
  const GameResult._();

  const factory GameResult.ongoing() = Ongoing;
  const factory GameResult.draw() = Draw;
  const factory GameResult.crossWins({required List<Position> winningPositions}) = CrossWins;
  const factory GameResult.noughtWins({required List<Position> winningPositions}) = NoughtWins;

  bool get isFinished => map(
    ongoing: (_) => false,
    draw: (_) => true,
    crossWins: (_) => true,
    noughtWins: (_) => true,
  );

  bool isCellAWinningCell(Cell cell) {
    return when(
      ongoing: () => false,
      draw: () => false,
      crossWins: (winningPositions) => winningPositions.contains(cell.position),
      noughtWins: (winningPositions) => winningPositions.contains(cell.position),
    );
  }
}
