import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/model/game_result.dart';

part 'score.freezed.dart';

@freezed
abstract class Score with _$Score {
  const factory Score({
    @Default(0) int crossWins,
    @Default(0) int noughtWins,
    @Default(0) int draws,
  }) = _Score;

  const Score._();

  Score updateScore(GameResult result) {
    return switch (result) {
      Ongoing() => this,
      Draw() => copyWith(draws: draws + 1),
      CrossWins() => copyWith(crossWins: crossWins + 1),
      NoughtWins() => copyWith(noughtWins: noughtWins + 1),
    };
  }

  int get totalGames => crossWins + noughtWins + draws;
}
