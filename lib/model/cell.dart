import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/model/position.dart';

part 'cell.freezed.dart';

@freezed
sealed class Cell with _$Cell {
  const factory Cell.empty(Position position) = EmptyCell;
  const factory Cell.cross(Position position) = CrossCell;
  const factory Cell.nought(Position position) = NoughtCell;
}
