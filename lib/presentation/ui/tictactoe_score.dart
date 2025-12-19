import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tictactoe/presentation/notifier/tictactoe_game_notifier.dart';
import 'package:tictactoe/presentation/ui/score_container.dart';
import 'package:tictactoe/presentation/ui/score_detail.dart';
import 'package:tictactoe/presentation/ui/tictactoe_color_scheme.dart';

class TictactoeScore extends ConsumerWidget {
  const TictactoeScore({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final score = ref.watch(tictactoeGameProvider.select((state) => state.score));
    final colors = Theme.of(context).colorScheme;

    return Wrap(
      spacing: 16,
      children: [
        ScoreContainer(
          children: [
            ScoreDetail(label: 'Cross Wins', value: score.crossWins, color: colors.cross),
            ScoreDetail(label: 'Nought Wins', value: score.noughtWins, color: colors.nought),
            ScoreDetail(label: 'Draws', value: score.draws, color: colors.draw),
            ScoreDetail(label: 'Total Games', value: score.totalGames),
          ],
        ),
        // const ScoreContainer(
        //   children: [],
        // ),
      ],
    );
  }
}
