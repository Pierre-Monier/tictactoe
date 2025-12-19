import 'package:flutter/material.dart';
import 'package:tictactoe/presentation/ui/tictactoe_alert.dart';
import 'package:tictactoe/presentation/ui/tictactoe_board.dart';
import 'package:tictactoe/presentation/ui/tictactoe_replay.dart';
import 'package:tictactoe/presentation/ui/tictactoe_score.dart';

class TictactoePage extends StatelessWidget {
  const TictactoePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            // crossAxisAlignment: .stretch,
            children: [
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
    );
  }
}
