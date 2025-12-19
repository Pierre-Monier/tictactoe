import 'package:flutter/material.dart';
import 'package:tictactoe/model/game_result.dart';

extension TictactoeColor on ColorScheme {
  Color get cross => primary;
  Color get nought => secondary;
  Color get draw => tertiary;

  Color get onCross => onPrimary;
  Color get onNought => onSecondary;
  Color get onDraw => onTertiary;

  Color? fromGameResult(GameResult result) => switch (result) {
    CrossWins() => cross,
    NoughtWins() => nought,
    Draw() => draw,
    Ongoing() => null,
  };
}
