import 'package:flutter/material.dart';
import 'package:tictactoe/model/game_result.dart';

extension TictactoeColor on ColorScheme {
  Color get cross => error;
  Color get nought => primary;
  Color get draw => tertiary;

  Color get onCross => onError;
  Color get onNought => onPrimary;
  Color get onDraw => onTertiary;

  Color? fromGameResult(GameResult result) => switch (result) {
    CrossWins() => cross,
    NoughtWins() => nought,
    Draw() => draw,
    Ongoing() => null,
  };
}
