import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tictactoe/model/cell.dart';
import 'package:tictactoe/model/player.dart';
import 'package:tictactoe/model/position.dart';
import 'package:tictactoe/model/tictactoe_game.dart';
import 'package:tictactoe/presentation/notifier/tictactoe_game_state.dart';

part 'tictactoe_game_notifier.g.dart';

@riverpod
class TictactoeGameNotifier extends _$TictactoeGameNotifier {
  @override
  TictactoeGameState build() {
    return const TictactoeGameState();
  }

  void playAt(Position position) {
    final updatedCell = switch (state.currentPlayer) {
      Player.cross => Cell.cross(position),
      Player.nought => Cell.nought(position),
    };

    final updatedGame = state.game.play(updatedCell);

    final updatedScore = state.score.updateScore(updatedGame.result);

    state = state.copyWith(
      game: updatedGame,
      score: updatedScore,
      currentPlayer: state.currentPlayer.toggle,
    );
  }

  void replay() {
    state = state.copyWith(
      game: const TictactoeGame(),
      currentPlayer: Player.firstPlayer,
    );
  }
}
