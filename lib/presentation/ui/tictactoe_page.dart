import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tictactoe/presentation/ui/game_mode_selector.dart';
import 'package:tictactoe/presentation/ui/tictactoe_alert.dart';
import 'package:tictactoe/presentation/ui/tictactoe_board.dart';
import 'package:tictactoe/presentation/ui/tictactoe_listener.dart';
import 'package:tictactoe/presentation/ui/tictactoe_replay.dart';
import 'package:tictactoe/presentation/ui/tictactoe_score.dart';

class TictactoePage extends ConsumerWidget {
  const TictactoePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const TictactoeListener(
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                GameModeSelector(),
                SizedBox(height: 32),
                TictactoeScore(),
                SizedBox(height: 32),
                TictactoeAlert(),
                Spacer(),
                TictactoeBoard(),
                Spacer(),
                TictactoeReplay(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
