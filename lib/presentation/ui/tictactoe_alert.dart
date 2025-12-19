import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tictactoe/model/game_result.dart';
import 'package:tictactoe/model/player.dart';
import 'package:tictactoe/presentation/notifier/tictactoe_game_notifier.dart';
import 'package:tictactoe/presentation/ui/tictactoe_color_scheme.dart';

class TictactoeAlert extends ConsumerWidget {
  const TictactoeAlert({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameResult = ref.watch(tictactoeGameProvider.select((state) => state.game.result));
    final currentPlayer = ref.watch(tictactoeGameProvider.select((state) => state.currentPlayer));
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final baseTextStyle = textTheme.headlineLarge?.copyWith(
      fontWeight: FontWeight.bold,
    );

    return switch (gameResult) {
      Ongoing() => Text(
        '${currentPlayer == Player.cross ? "X" : "O"} turn',
        style: baseTextStyle,
      ),
      Draw() => Text(
        'its a draw',
        style: baseTextStyle?.copyWith(color: colors.draw),
      ),
      CrossWins() => Text(
        'Cross wins',
        style: baseTextStyle?.copyWith(color: colors.cross),
      ),
      NoughtWins() => Text(
        'Nought wins',
        style: baseTextStyle?.copyWith(color: colors.nought),
      ),
    };
  }
}
