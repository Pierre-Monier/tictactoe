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

  static const Player firstPlayer = Player.cross;
}
