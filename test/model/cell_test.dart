import 'package:flutter_test/flutter_test.dart';
import 'package:tictactoe/model/cell.dart';
import 'package:tictactoe/model/position.dart';

void main() {
  group('Cell', () {
    test('should create an empty cell', () {
      const position = Position(0, 0);
      const cell = Cell.empty(position);

      expect(cell, isA<EmptyCell>());
      expect(cell.position, equals(position));
    });

    test('should create a cross cell', () {
      const position = Position(1, 2);
      const cell = Cell.cross(position);

      expect(cell, isA<CrossCell>());
      expect(cell.position, equals(position));
    });

    test('should create a nought cell', () {
      const position = Position(2, 1);
      const cell = Cell.nought(position);

      expect(cell, isA<NoughtCell>());
      expect(cell.position, equals(position));
    });

    test('cells with same type and position should be equal', () {
      const position = Position(1, 1);
      const cell1 = Cell.empty(position);
      const cell2 = Cell.empty(position);

      expect(cell1, equals(cell2));
    });

    test('cells with different types should not be equal', () {
      const position = Position(1, 1);
      const emptyCell = Cell.empty(position);
      const crossCell = Cell.cross(position);

      expect(emptyCell, isNot(equals(crossCell)));
    });

    test('cells with different positions should not be equal', () {
      const cell1 = Cell.empty(Position(0, 0));
      const cell2 = Cell.empty(Position(1, 1));

      expect(cell1, isNot(equals(cell2)));
    });
  });
}
