import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tictactoe/data/repository/tictactoe_repository.dart';
import 'package:tictactoe/model/tictactoe_game.dart';

import '../../mock.dart';

void main() {
  group('TictactoeRepository', () {
    test('should convert game to json, call llmDatasource and return updated game', () async {
      final mockLLMDatasource = MockLLMDatasource();
      final repository = TictactoeRepository(mockLLMDatasource);
      const currentGame = TictactoeGame();
      // We just change the updated game to be able to verify it's the one returned
      const updatedGame = TictactoeGame(board: []);

      when(
        () => mockLLMDatasource.noughtPlay(any()),
      ).thenAnswer((_) async => updatedGame.toJson());

      final result = await repository.noughtPlay(currentGame);

      expect(result, updatedGame);
      verify(
        () => mockLLMDatasource.noughtPlay(currentGame.toJson()),
      );
    });
  });
}
