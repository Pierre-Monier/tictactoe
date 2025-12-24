enum Player {
  cross,
  nought
  ;

  Player get toggle {
    switch (this) {
      case Player.cross:
        return Player.nought;
      case Player.nought:
        return Player.cross;
    }
  }

  bool get isAi {
    return this == Player.nought;
  }

  static const Player firstPlayer = Player.cross;
}
