import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tictactoe/data/datasource/gemini_datasource.dart';

import '../../mock.dart';

void main() {
  group('GeminiDatasource', () {
    test('should return currentGame when prompt returns null', () async {
      final mockGemini = MockGemini();
      final geminiDatasource = GeminiDatasource(mockGemini);
      final currentGame = {'test': 'data'};

      when(
        () => mockGemini.prompt(
          model: any(named: 'model'),
          parts: any(named: 'parts'),
        ),
      ).thenAnswer((_) async => null);

      final result = await geminiDatasource.noughtPlay(currentGame);

      expect(result, equals(currentGame));
    });

    test('should return currentGame when prompt throws exception', () async {
      final mockGemini = MockGemini();
      final geminiDatasource = GeminiDatasource(mockGemini);
      final currentGame = {'test': 'data'};

      when(
        () => mockGemini.prompt(
          model: any(named: 'model'),
          parts: any(named: 'parts'),
        ),
      ).thenThrow(Exception('API Error'));

      final result = await geminiDatasource.noughtPlay(currentGame);

      expect(result, equals(currentGame));
    });

    test('should return parsed JSON when prompt returns valid JSON', () async {
      final mockGemini = MockGemini();
      final mockCandidates = MockCandidates();
      final mockContent = MockContent();
      final mockPart = MockPart();
      final geminiDatasource = GeminiDatasource(mockGemini);
      final currentGame = {'old': 'data'};
      final expectedResult = {'row': 0, 'col': 1};
      const jsonString = '{"row":0,"col":1}';

      when(() => mockCandidates.content).thenReturn(mockContent);
      when(() => mockContent.parts).thenReturn([mockPart]);
      when(() => mockPart.text).thenReturn(jsonString);
      when(
        () => mockGemini.prompt(
          model: any(named: 'model'),
          parts: any(named: 'parts'),
        ),
      ).thenAnswer((_) async => mockCandidates);

      final result = await geminiDatasource.noughtPlay(currentGame);

      expect(result, equals(expectedResult));
    });
  });
}
