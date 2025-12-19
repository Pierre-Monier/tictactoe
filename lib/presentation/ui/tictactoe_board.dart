import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tictactoe/presentation/notifier/tictactoe_game_notifier.dart';
import 'package:tictactoe/presentation/ui/tictactoe_cell.dart';

class TictactoeBoard extends ConsumerWidget {
  const TictactoeBoard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final game = ref.watch(tictactoeGameProvider.select((state) => state.game));

    return AbsorbPointer(
      absorbing: game.result.isFinished,
      child: Column(
        spacing: 16,
        crossAxisAlignment: .stretch,
        children: [
          for (final row in game.rows)
            Row(
              spacing: 16,
              mainAxisAlignment: .center,
              children: [
                for (final cell in row)
                  Expanded(
                    child: TictactoeCell(
                      cell: cell,
                    ),
                  ),
              ],
            ),
        ],
      ),
    );
  }
}
