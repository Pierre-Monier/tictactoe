import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:result_type/result_type.dart';
import 'package:tictactoe/model/cell.dart';
import 'package:tictactoe/model/tictactoe_game.dart';
import 'package:tictactoe/usecase/ia_play_usecase.dart';

import '../mock.dart';

void main() {
  setUpAll(() {
    registerFallbackValue(const TictactoeGame());
  });

  group('IaPlayUsecase', () {
    test('should return Failure when validateMove returns false after max retries', () async {
      final mockRepository = MockTictactoeRepository();
      final usecase = IaPlayUsecase(mockRepository);

      final currentGame = MockTictactoeGame();
      final newGame = MockTictactoeGame();

      when(() => mockRepository.noughtPlay(any())).thenAnswer((_) async => newGame);
      when(() => currentGame.validateMove<NoughtCell>(newGame)).thenReturn(false);

      final result = await usecase(currentGame);

      expect(result, isA<Failure<TictactoeGame, Exception>>());
      verify(() => mockRepository.noughtPlay(currentGame)).called(5);
    });

    test('should return Success with newGame when validateMove returns true', () async {
      final mockRepository = MockTictactoeRepository();
      final usecase = IaPlayUsecase(mockRepository);

      final currentGame = MockTictactoeGame();
      final newGame = MockTictactoeGame();

      when(() => mockRepository.noughtPlay(any())).thenAnswer((_) async => newGame);
      when(() => currentGame.validateMove<NoughtCell>(newGame)).thenReturn(true);

      final result = await usecase(currentGame);

      expect(result, isA<Success<TictactoeGame, Exception>>());
      expect((result as Success).value, equals(newGame));
      verify(() => mockRepository.noughtPlay(currentGame));
    });
  });
}
