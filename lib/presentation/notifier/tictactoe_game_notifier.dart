import 'package:result_type/result_type.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tictactoe/model/cell.dart';
import 'package:tictactoe/model/player.dart';
import 'package:tictactoe/model/position.dart';
import 'package:tictactoe/model/tictactoe_game.dart';
import 'package:tictactoe/presentation/notifier/tictactoe_game_state.dart';
import 'package:tictactoe/usecase/ia_play_usecase.dart';

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

    _updateGame(state.game.play(updatedCell));
  }

  Future<void> iaPlay() async {
    final currentGame = state.game;
    final result = await ref.read(iaPlayUsecaseProvider)(currentGame);

    return switch (result) {
      Success<TictactoeGame, Exception>(:final value) => _updateGame(value),
      Failure<TictactoeGame, Exception>() => state = state.copyWith(haveIaPlayIssue: true),
    };
  }

  void _updateGame(TictactoeGame updatedGame) {
    final updatedScore = state.score.updateScore(updatedGame.result);

    state = state.copyWith(
      game: updatedGame,
      score: updatedScore,
      currentPlayer: state.currentPlayer.toggle,
    );
  }

  void replay() {
    state = state.copyWith(game: const TictactoeGame(), currentPlayer: Player.firstPlayer, haveIaPlayIssue: false);
  }
}
