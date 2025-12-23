import 'dart:convert';

import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tictactoe/data/llm_datasource.dart';

part 'gemini_datasource.g.dart';

class GeminiDatasource implements LLMDatasource {
  GeminiDatasource(this.gemini, {Logger? logger}) : logger = logger ?? Logger();
  final Gemini gemini;
  final Logger logger;

  @override
  Future<Map<String, dynamic>> noughtPlay(Map<String, dynamic> currentGame) async {
    try {
      final candidates = await gemini.prompt(
        parts: [
          Part.text('''
  You are playing Tic-Tac-Toe as the Nought player (O). You will receive the current game state as JSON and must return the updated game state after making your move.                            
                                                                                                                                                                                                  
  RULES:                                                                                                                                                                                          
  1. You MUST replace exactly ONE cell with "type": "empty" by changing its type to "nought"                                                                                                      
  2. You MUST NOT change the "position" of any cell                                                                                                                                               
  3. You MUST NOT add or remove any cells - the board must always have exactly 9 cells                                                                                                            
  4. You MUST NOT modify cells that have "type": "cross" or "type": "nought"                                                                                                                      
  5. Play strategically to WIN the game                                                                                                                                                           
                                                                                                                                                                                                  
  OUTPUT FORMAT:                                                                                                                                                                                  
  - Return ONLY valid JSON, no other text, no markdown, no code blocks                                                                                                                            
  - The output must be parseable by a JSON parser directly                                                                                                                                        
                                                                                                                                                                                                  
  BOARD LAYOUT (positions):                                                                                                                                                                       
  (0,0) | (0,1) | (0,2)                                                                                                                                                                           
  ------|-------|------                                                                                                                                                                           
  (1,0) | (1,1) | (1,2)                                                                                                                                                                           
  ------|-------|------                                                                                                                                                                           
  (2,0) | (2,1) | (2,2)                                                                                                                                                                           
                                                                                                                                                                                                  
  EXAMPLE:                                                                                                                                                                                        
                                                                                                                                                                                                  
  Input:                                                                                                                                                                                          
  {"board":[{"position":{"x":0,"y":0},"type":"cross"},{"position":{"x":0,"y":1},"type":"empty"},{"position":{"x":0,"y":2},"type":"empty"},{"position":{"x":1,"y":0},"type":"empty"},{"position":{"x":1,"y":1},"type":"empty"},{"position":{"x":1,"y":2},"type":"empty"},{"position":{"x":2,"y":0},"type":"empty"},{"position":{"x":2,"y":1},"type":"empty"},{"position":{"x":2,"y":2},"type":"empty"}]}
                                                                                                                                                                                                  
  Output:                                                                                                                                                                                         
  {"board":[{"position":{"x":0,"y":0},"type":"cross"},{"position":{"x":0,"y":1},"type":"empty"},{"position":{"x":0,"y":2},"type":"empty"},{"position":{"x":1,"y":0},"type":"empty"},{"position":{"x":1,"y":1},"type":"nought"},{"position":{"x":1,"y":2},"type":"empty"},{"position":{"x":2,"y":0},"type":"empty"},{"position":{"x":2,"y":1},"type":"empty"},{"position":{"x":2,"y":2},"type":"empty"}]}
                                                                                                                                                                                                  
  In this example, the nought player strategically took the center position (1,1).                                                                                                                
                                                                                                                                                                                                  
  NOW PLAY. Here is the current game state:                                                                                                                                                       
  $currentGame     
'''),
        ],
      );

      if (candidates?.output case final nonNullOutput?) {
        return jsonDecode(nonNullOutput) as Map<String, dynamic>;
      }

      logger.w('Null output from Gemini');
      return currentGame;
    } on Exception catch (error, stackTrace) {
      logger.e('Error during Gemini noughtPlay', error: error, stackTrace: stackTrace);
      return currentGame;
    }
  }
}

@riverpod
GeminiDatasource geminiDatasource(Ref ref, {required String apiKey}) {
  return GeminiDatasource(Gemini.init(apiKey: apiKey));
}
