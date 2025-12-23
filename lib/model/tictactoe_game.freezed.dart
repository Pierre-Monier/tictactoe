// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tictactoe_game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TictactoeGame {

 List<Cell> get board;
/// Create a copy of TictactoeGame
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TictactoeGameCopyWith<TictactoeGame> get copyWith => _$TictactoeGameCopyWithImpl<TictactoeGame>(this as TictactoeGame, _$identity);

  /// Serializes this TictactoeGame to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TictactoeGame&&const DeepCollectionEquality().equals(other.board, board));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(board));

@override
String toString() {
  return 'TictactoeGame(board: $board)';
}


}

/// @nodoc
abstract mixin class $TictactoeGameCopyWith<$Res>  {
  factory $TictactoeGameCopyWith(TictactoeGame value, $Res Function(TictactoeGame) _then) = _$TictactoeGameCopyWithImpl;
@useResult
$Res call({
 List<Cell> board
});




}
/// @nodoc
class _$TictactoeGameCopyWithImpl<$Res>
    implements $TictactoeGameCopyWith<$Res> {
  _$TictactoeGameCopyWithImpl(this._self, this._then);

  final TictactoeGame _self;
  final $Res Function(TictactoeGame) _then;

/// Create a copy of TictactoeGame
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? board = null,}) {
  return _then(_self.copyWith(
board: null == board ? _self.board : board // ignore: cast_nullable_to_non_nullable
as List<Cell>,
  ));
}

}


/// Adds pattern-matching-related methods to [TictactoeGame].
extension TictactoeGamePatterns on TictactoeGame {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TictactoeGame value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TictactoeGame() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TictactoeGame value)  $default,){
final _that = this;
switch (_that) {
case _TictactoeGame():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TictactoeGame value)?  $default,){
final _that = this;
switch (_that) {
case _TictactoeGame() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Cell> board)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TictactoeGame() when $default != null:
return $default(_that.board);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Cell> board)  $default,) {final _that = this;
switch (_that) {
case _TictactoeGame():
return $default(_that.board);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Cell> board)?  $default,) {final _that = this;
switch (_that) {
case _TictactoeGame() when $default != null:
return $default(_that.board);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TictactoeGame extends TictactoeGame {
  const _TictactoeGame({final  List<Cell> board = TictactoeGame.startingBoard}): _board = board,super._();
  factory _TictactoeGame.fromJson(Map<String, dynamic> json) => _$TictactoeGameFromJson(json);

 final  List<Cell> _board;
@override@JsonKey() List<Cell> get board {
  if (_board is EqualUnmodifiableListView) return _board;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_board);
}


/// Create a copy of TictactoeGame
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TictactoeGameCopyWith<_TictactoeGame> get copyWith => __$TictactoeGameCopyWithImpl<_TictactoeGame>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TictactoeGameToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TictactoeGame&&const DeepCollectionEquality().equals(other._board, _board));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_board));

@override
String toString() {
  return 'TictactoeGame(board: $board)';
}


}

/// @nodoc
abstract mixin class _$TictactoeGameCopyWith<$Res> implements $TictactoeGameCopyWith<$Res> {
  factory _$TictactoeGameCopyWith(_TictactoeGame value, $Res Function(_TictactoeGame) _then) = __$TictactoeGameCopyWithImpl;
@override @useResult
$Res call({
 List<Cell> board
});




}
/// @nodoc
class __$TictactoeGameCopyWithImpl<$Res>
    implements _$TictactoeGameCopyWith<$Res> {
  __$TictactoeGameCopyWithImpl(this._self, this._then);

  final _TictactoeGame _self;
  final $Res Function(_TictactoeGame) _then;

/// Create a copy of TictactoeGame
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? board = null,}) {
  return _then(_TictactoeGame(
board: null == board ? _self._board : board // ignore: cast_nullable_to_non_nullable
as List<Cell>,
  ));
}


}

// dart format on
