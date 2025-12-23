import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/model/game_mode.dart';
import 'package:tictactoe/model/player.dart';
import 'package:tictactoe/model/score.dart';
import 'package:tictactoe/model/tictactoe_game.dart';

part 'tictactoe_game_state.freezed.dart';

@freezed
abstract class TictactoeGameState with _$TictactoeGameState {
  const factory TictactoeGameState({
    @Default(Score()) Score score,
    @Default(Player.firstPlayer) Player currentPlayer,
    @Default(TictactoeGame()) TictactoeGame game,
    @Default(GameMode.humanVsIa) GameMode gameMode,
    @Default(false) bool haveIaPlayIssue,
  }) = _TictactoeGameState;
}
