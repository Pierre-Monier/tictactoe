import 'package:flutter_test/flutter_test.dart';
import 'package:tictactoe/model/player.dart';

void main() {
  group('Player', () {
    test('should have two values', () {
      expect(Player.values.length, equals(2));
      expect(Player.values, containsAll([Player.cross, Player.nought]));
    });

    group('toggle', () {
      test('should toggle cross to nought', () {
        expect(Player.cross.toggle, equals(Player.nought));
      });

      test('should toggle nought to cross', () {
        expect(Player.nought.toggle, equals(Player.cross));
      });
    });

    test('firstPlayer should return cross', () {
      expect(Player.firstPlayer, equals(Player.cross));
    });
  });
}
