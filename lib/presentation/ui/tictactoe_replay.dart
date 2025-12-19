import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tictactoe/presentation/notifier/tictactoe_game_notifier.dart';
import 'package:tictactoe/presentation/ui/tictactoe_color_scheme.dart';

class TictactoeReplay extends ConsumerWidget {
  const TictactoeReplay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final gameResult = ref.watch(tictactoeGameProvider.select((state) => state.game.result));

    return Visibility(
      visible: gameResult.isFinished,
      maintainSize: true,
      maintainAnimation: true,
      maintainState: true,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: colors.fromGameResult(gameResult),
        ),
        onPressed: () {
          ref.read(tictactoeGameProvider.notifier).replay();
        },
        child: Text(
          'New Game',
          style: textTheme.bodyMedium?.copyWith(color: colors.onPrimary),
        ),
      ),
    );
  }
}
