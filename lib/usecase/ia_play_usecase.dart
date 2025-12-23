import 'package:result_type/result_type.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tictactoe/data/repository/tictactoe_repository.dart';
import 'package:tictactoe/model/cell.dart';
import 'package:tictactoe/model/tictactoe_game.dart';

part 'ia_play_usecase.g.dart';

class IaPlayUsecase {
  const IaPlayUsecase(this.repository);
  final TictactoeRepository repository;

  static const maxAttempts = 5;

  Future<Result<TictactoeGame, Exception>> call(TictactoeGame currentGame) async {
    for (var attempt = 0; attempt < maxAttempts; attempt++) {
      final newGame = await repository.noughtPlay(currentGame);
      if (currentGame.validateMove<NoughtCell>(newGame)) {
        return Success(newGame);
      }
    }

    return Failure(Exception('Failed to generate valid move after $maxAttempts attempts'));
  }
}

@riverpod
IaPlayUsecase iaPlayUsecase(Ref ref) {
  return IaPlayUsecase(ref.read(tictactoeRepositoryProvider));
}
