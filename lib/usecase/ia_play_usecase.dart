import 'package:logger/logger.dart';
import 'package:result_type/result_type.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tictactoe/data/repository/tictactoe_repository.dart';
import 'package:tictactoe/model/cell.dart';
import 'package:tictactoe/model/tictactoe_game.dart';

part 'ia_play_usecase.g.dart';

class IaPlayUsecase {
  IaPlayUsecase(this.repository, {Logger? logger}) : logger = logger ?? Logger();
  final TictactoeRepository repository;
  final Logger logger;

  static const maxAttempts = 5;

  Future<Result<TictactoeGame, Exception>> call(TictactoeGame currentGame) async {
    for (var attempt = 0; attempt < maxAttempts; attempt++) {
      try {
        final newGame = await repository.noughtPlay(currentGame);
        if (currentGame.validateMove<NoughtCell>(newGame)) {
          return Success(newGame);
        }
        // Error can error here so we catch everything
        // ignore: avoid_catches_without_on_clauses
      } catch (error, stackTrace) {
        final errorMessage = 'IA Play Usecase: Error during IA play: $error\n$stackTrace';
        logger.w(errorMessage);
      }
    }

    const maxAttemptsMessage = 'IA Play Usecase: Failed to generate valid move after $maxAttempts attempts';
    logger.w(maxAttemptsMessage);
    return Failure(Exception(maxAttemptsMessage));
  }
}

@riverpod
IaPlayUsecase iaPlayUsecase(Ref ref) {
  return IaPlayUsecase(ref.read(tictactoeRepositoryProvider));
}
