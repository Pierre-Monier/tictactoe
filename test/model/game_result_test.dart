import 'package:flutter_test/flutter_test.dart';
import 'package:tictactoe/model/game_result.dart';

void main() {
  group('GameResult', () {
    group('isFinished', () {
      test('should return false for ongoing game', () {
        expect(const Ongoing().isFinished, isFalse);
      });

      test('should return true for draw', () {
        expect(const Draw().isFinished, isTrue);
      });

      test('should return true for crossWins', () {
        expect(const CrossWins(winningPositions: []).isFinished, isTrue);
      });

      test('should return true for noughtWins', () {
        expect(const NoughtWins(winningPositions: []).isFinished, isTrue);
      });
    });
  });
}
