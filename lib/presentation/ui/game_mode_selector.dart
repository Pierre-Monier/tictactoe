import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tictactoe/model/game_mode.dart';
import 'package:tictactoe/presentation/notifier/tictactoe_game_notifier.dart';

class GameModeSelector extends ConsumerWidget {
  const GameModeSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameMode = ref.watch(tictactoeGameProvider.select((state) => state.gameMode));

    return SegmentedButton<GameMode>(
      segments: const <ButtonSegment<GameMode>>[
        ButtonSegment<GameMode>(
          value: GameMode.humanVsHuman,
          icon: Icon(Icons.people),
          label: Text('Human vs Human'),
        ),
        ButtonSegment<GameMode>(
          value: GameMode.humanVsAi,
          icon: Icon(Icons.smart_toy),
          label: Text('Human vs AI'),
        ),
      ],
      selected: <GameMode>{gameMode},
      onSelectionChanged: (Set<GameMode> newSelection) {
        ref.read(tictactoeGameProvider.notifier).setGameMode(newSelection.first);
      },
    );
  }
}
