// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tictactoe_game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TictactoeGameState {

 Score get score; Player get currentPlayer; TictactoeGame get game;
/// Create a copy of TictactoeGameState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TictactoeGameStateCopyWith<TictactoeGameState> get copyWith => _$TictactoeGameStateCopyWithImpl<TictactoeGameState>(this as TictactoeGameState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TictactoeGameState&&(identical(other.score, score) || other.score == score)&&(identical(other.currentPlayer, currentPlayer) || other.currentPlayer == currentPlayer)&&(identical(other.game, game) || other.game == game));
}


@override
int get hashCode => Object.hash(runtimeType,score,currentPlayer,game);

@override
String toString() {
  return 'TictactoeGameState(score: $score, currentPlayer: $currentPlayer, game: $game)';
}


}

/// @nodoc
abstract mixin class $TictactoeGameStateCopyWith<$Res>  {
  factory $TictactoeGameStateCopyWith(TictactoeGameState value, $Res Function(TictactoeGameState) _then) = _$TictactoeGameStateCopyWithImpl;
@useResult
$Res call({
 Score score, Player currentPlayer, TictactoeGame game
});


$ScoreCopyWith<$Res> get score;$TictactoeGameCopyWith<$Res> get game;

}
/// @nodoc
class _$TictactoeGameStateCopyWithImpl<$Res>
    implements $TictactoeGameStateCopyWith<$Res> {
  _$TictactoeGameStateCopyWithImpl(this._self, this._then);

  final TictactoeGameState _self;
  final $Res Function(TictactoeGameState) _then;

/// Create a copy of TictactoeGameState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? score = null,Object? currentPlayer = null,Object? game = null,}) {
  return _then(_self.copyWith(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as Score,currentPlayer: null == currentPlayer ? _self.currentPlayer : currentPlayer // ignore: cast_nullable_to_non_nullable
as Player,game: null == game ? _self.game : game // ignore: cast_nullable_to_non_nullable
as TictactoeGame,
  ));
}
/// Create a copy of TictactoeGameState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScoreCopyWith<$Res> get score {
  
  return $ScoreCopyWith<$Res>(_self.score, (value) {
    return _then(_self.copyWith(score: value));
  });
}/// Create a copy of TictactoeGameState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TictactoeGameCopyWith<$Res> get game {
  
  return $TictactoeGameCopyWith<$Res>(_self.game, (value) {
    return _then(_self.copyWith(game: value));
  });
}
}


/// Adds pattern-matching-related methods to [TictactoeGameState].
extension TictactoeGameStatePatterns on TictactoeGameState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TictactoeGameState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TictactoeGameState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TictactoeGameState value)  $default,){
final _that = this;
switch (_that) {
case _TictactoeGameState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TictactoeGameState value)?  $default,){
final _that = this;
switch (_that) {
case _TictactoeGameState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Score score,  Player currentPlayer,  TictactoeGame game)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TictactoeGameState() when $default != null:
return $default(_that.score,_that.currentPlayer,_that.game);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Score score,  Player currentPlayer,  TictactoeGame game)  $default,) {final _that = this;
switch (_that) {
case _TictactoeGameState():
return $default(_that.score,_that.currentPlayer,_that.game);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Score score,  Player currentPlayer,  TictactoeGame game)?  $default,) {final _that = this;
switch (_that) {
case _TictactoeGameState() when $default != null:
return $default(_that.score,_that.currentPlayer,_that.game);case _:
  return null;

}
}

}

/// @nodoc


class _TictactoeGameState implements TictactoeGameState {
  const _TictactoeGameState({this.score = const Score(), this.currentPlayer = Player.firstPlayer, this.game = const TictactoeGame()});
  

@override@JsonKey() final  Score score;
@override@JsonKey() final  Player currentPlayer;
@override@JsonKey() final  TictactoeGame game;

/// Create a copy of TictactoeGameState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TictactoeGameStateCopyWith<_TictactoeGameState> get copyWith => __$TictactoeGameStateCopyWithImpl<_TictactoeGameState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TictactoeGameState&&(identical(other.score, score) || other.score == score)&&(identical(other.currentPlayer, currentPlayer) || other.currentPlayer == currentPlayer)&&(identical(other.game, game) || other.game == game));
}


@override
int get hashCode => Object.hash(runtimeType,score,currentPlayer,game);

@override
String toString() {
  return 'TictactoeGameState(score: $score, currentPlayer: $currentPlayer, game: $game)';
}


}

/// @nodoc
abstract mixin class _$TictactoeGameStateCopyWith<$Res> implements $TictactoeGameStateCopyWith<$Res> {
  factory _$TictactoeGameStateCopyWith(_TictactoeGameState value, $Res Function(_TictactoeGameState) _then) = __$TictactoeGameStateCopyWithImpl;
@override @useResult
$Res call({
 Score score, Player currentPlayer, TictactoeGame game
});


@override $ScoreCopyWith<$Res> get score;@override $TictactoeGameCopyWith<$Res> get game;

}
/// @nodoc
class __$TictactoeGameStateCopyWithImpl<$Res>
    implements _$TictactoeGameStateCopyWith<$Res> {
  __$TictactoeGameStateCopyWithImpl(this._self, this._then);

  final _TictactoeGameState _self;
  final $Res Function(_TictactoeGameState) _then;

/// Create a copy of TictactoeGameState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? score = null,Object? currentPlayer = null,Object? game = null,}) {
  return _then(_TictactoeGameState(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as Score,currentPlayer: null == currentPlayer ? _self.currentPlayer : currentPlayer // ignore: cast_nullable_to_non_nullable
as Player,game: null == game ? _self.game : game // ignore: cast_nullable_to_non_nullable
as TictactoeGame,
  ));
}

/// Create a copy of TictactoeGameState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScoreCopyWith<$Res> get score {
  
  return $ScoreCopyWith<$Res>(_self.score, (value) {
    return _then(_self.copyWith(score: value));
  });
}/// Create a copy of TictactoeGameState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TictactoeGameCopyWith<$Res> get game {
  
  return $TictactoeGameCopyWith<$Res>(_self.game, (value) {
    return _then(_self.copyWith(game: value));
  });
}
}

// dart format on
