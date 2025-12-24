import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tictactoe/model/cell.dart';
import 'package:tictactoe/model/game_result.dart';
import 'package:tictactoe/presentation/notifier/tictactoe_game_notifier.dart';
import 'package:tictactoe/presentation/ui/cross_painter.dart';
import 'package:tictactoe/presentation/ui/nought_painter.dart';
import 'package:tictactoe/presentation/ui/tictactoe_color_scheme.dart';

class TictactoeCell extends ConsumerWidget {
  const TictactoeCell({required this.cell, super.key});

  final Cell cell;

  Color getWinningCellColor(ColorScheme colors) => cell is CrossCell ? colors.cross : colors.nought;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = Theme.of(context).colorScheme;
    final result = ref.watch(
      tictactoeGameProvider.select((state) => state.game.result),
    );

    final crossColor = switch (result) {
      Ongoing() => colors.cross,
      Draw() => colors.onDraw,
      CrossWins() => colors.onCross,
      NoughtWins() => colors.cross,
    };

    final noughtColor = switch (result) {
      Ongoing() => colors.nought,
      Draw() => colors.onDraw,
      CrossWins() => colors.nought,
      NoughtWins() => colors.onNought,
    };

    final isWinningCell = result.isCellAWinningCell(cell);

    final cellColor = isWinningCell ? getWinningCellColor(colors) : colors.surfaceDim;

    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: cell is EmptyCell
          ? () {
              ref.read(tictactoeGameProvider.notifier).playAt(cell.position);
            }
          : null,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 120,
        height: 120,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: cellColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: switch (cell) {
          EmptyCell() => const SizedBox.shrink(),
          CrossCell() => CustomPaint(
            painter: CrossPainter(color: crossColor),
          ),
          NoughtCell() => CustomPaint(
            painter: NoughtPainter(color: noughtColor),
          ),
        },
      ),
    );
  }
}
