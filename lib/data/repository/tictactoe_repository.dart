import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tictactoe/data/datasource/llm_datasource.dart';
import 'package:tictactoe/model/tictactoe_game.dart';

class TictactoeRepository {
  const TictactoeRepository(this.llmDatasource);
  final LLMDatasource llmDatasource;

  Future<TictactoeGame> noughtPlay(TictactoeGame currentGame) async {
    final updatedGameMap = await llmDatasource.noughtPlay(currentGame.toJson());
    return TictactoeGame.fromJson(updatedGameMap);
  }
}

@Riverpod()
TictactoeRepository tictactoeRepository(Ref ref) {
  return TictactoeRepository(ref.read(llmDatasourceProvider));
}
