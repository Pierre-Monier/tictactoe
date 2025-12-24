import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tictactoe/model/game_mode.dart';
import 'package:tictactoe/model/game_result.dart';
import 'package:tictactoe/model/player.dart';
import 'package:tictactoe/presentation/notifier/tictactoe_game_notifier.dart';
import 'package:tictactoe/presentation/ui/ia_issue_modal.dart';

class TictactoeListener extends ConsumerWidget {
  const TictactoeListener({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref
      ..listen(tictactoeGameProvider.select((state) => state.haveIaPlayIssue), (previous, next) async {
        if (next) {
          await showModalBottomSheet<void>(context: context, builder: (context) => const IaIssueModal());
        }
      })
      ..listen(
        tictactoeGameProvider.select(
          (state) =>
              state.gameMode == GameMode.humanVsAi &&
              state.currentPlayer == Player.nought &&
              state.game.result is Ongoing,
        ),
        (prev, next) async {
          if (next) {
            await ref.read(tictactoeGameProvider.notifier).iaPlay();
          }
        },
      );

    return child;
  }
}
