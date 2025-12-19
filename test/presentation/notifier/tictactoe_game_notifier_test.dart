import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tictactoe/model/cell.dart';
import 'package:tictactoe/model/player.dart';
import 'package:tictactoe/model/position.dart';
import 'package:tictactoe/presentation/notifier/tictactoe_game_notifier.dart';

void main() {
  group('TictactoeGameNotifier', () {
    late ProviderContainer container;

    setUp(() {
      container = ProviderContainer();
    });

    tearDown(() {
      container.dispose();
    });

    test('should initialize with empty board and cross as current player', () {
      final state = container.read(tictactoeGameProvider);

      expect(state.currentPlayer, equals(Player.cross));
      expect(state.game.board.every((cell) => cell is EmptyCell), isTrue);
    });

    group('playAt', () {
      test('should place correct cell type based on current player', () {
        final notifier = container.read(tictactoeGameProvider.notifier)..playAt(const Position(0, 0));
        var state = container.read(tictactoeGameProvider);
        var cell = state.game.board.firstWhere((c) => c.position == const Position(0, 0));
        expect(cell, isA<CrossCell>());

        notifier.playAt(const Position(1, 1));
        state = container.read(tictactoeGameProvider);
        cell = state.game.board.firstWhere((c) => c.position == const Position(1, 1));
        expect(cell, isA<NoughtCell>());
      });

      test('should toggle player after each move', () {
        final notifier = container.read(tictactoeGameProvider.notifier);

        expect(container.read(tictactoeGameProvider).currentPlayer, equals(Player.cross));

        notifier.playAt(const Position(0, 0));
        expect(container.read(tictactoeGameProvider).currentPlayer, equals(Player.nought));

        notifier.playAt(const Position(1, 1));
        expect(container.read(tictactoeGameProvider).currentPlayer, equals(Player.cross));
      });
    });
  });
}
