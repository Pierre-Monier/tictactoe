import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tictactoe/data/datasource/gemini_datasource.dart';

part 'llm_datasource.g.dart';

// In this case we really want this interface if we want to easily use other LLM datasources
// ignore: one_member_abstracts
abstract interface class LLMDatasource {
  Future<Map<String, dynamic>> noughtPlay(Map<String, dynamic> currentGame);
}

@riverpod
LLMDatasource llmDatasource(Ref ref) {
  return ref.read(geminiDatasourceProvider(apiKey: 'todo'));
}
