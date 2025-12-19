import 'package:flutter_test/flutter_test.dart';
import 'package:tictactoe/model/position.dart';

void main() {
  group('Position', () {
    test('should create a position with x and y coordinates', () {
      const position = Position(2, 3);

      expect(position.x, equals(2));
      expect(position.y, equals(3));
    });

    test('positions with same coordinates should be equal', () {
      const position1 = Position(1, 2);
      const position2 = Position(1, 2);

      expect(position1, equals(position2));
    });

    test('positions with different x coordinates should not be equal', () {
      const position1 = Position(1, 2);
      const position2 = Position(3, 2);

      expect(position1, isNot(equals(position2)));
    });

    test('positions with different y coordinates should not be equal', () {
      const position1 = Position(1, 2);
      const position2 = Position(1, 3);

      expect(position1, isNot(equals(position2)));
    });

    test('should handle zero coordinates', () {
      const position = Position(0, 0);

      expect(position.x, equals(0));
      expect(position.y, equals(0));
    });
  });
}
