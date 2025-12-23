import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tictactoe/presentation/notifier/tictactoe_game_notifier.dart';

class IaIssueModal extends ConsumerWidget {
  const IaIssueModal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'IA Play Issue',
            style: textTheme.headlineLarge,
          ),
          const SizedBox(height: 16),
          Text(
            'There was an issue with the IA play. Please try again.',
            style: textTheme.bodyMedium,
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              ref.read(tictactoeGameProvider.notifier).replay();
              Navigator.of(context).pop();
            },
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}
