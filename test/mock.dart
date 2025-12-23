import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tictactoe/model/tictactoe_game.dart';

class MockTictactoeGame extends Mock implements TictactoeGame {}

class MockGemini extends Mock implements Gemini {}

class MockCandidates extends Mock implements Candidates {}

class MockContent extends Mock implements Content {}

class MockPart extends Mock implements TextPart {}
