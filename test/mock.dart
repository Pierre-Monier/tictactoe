import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tictactoe/data/datasource/llm_datasource.dart';
import 'package:tictactoe/data/repository/tictactoe_repository.dart';
import 'package:tictactoe/model/tictactoe_game.dart';
import 'package:tictactoe/usecase/ia_play_usecase.dart';

class MockTictactoeGame extends Mock implements TictactoeGame {}

class MockGemini extends Mock implements Gemini {}

class MockCandidates extends Mock implements Candidates {}

class MockContent extends Mock implements Content {}

class MockPart extends Mock implements TextPart {}

class MockLLMDatasource extends Mock implements LLMDatasource {}

class MockTictactoeRepository extends Mock implements TictactoeRepository {}

class MockIaPlayUsecase extends Mock implements IaPlayUsecase {}
