// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GameResult {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameResult);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameResult()';
}


}

/// @nodoc
class $GameResultCopyWith<$Res>  {
$GameResultCopyWith(GameResult _, $Res Function(GameResult) __);
}


/// Adds pattern-matching-related methods to [GameResult].
extension GameResultPatterns on GameResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Ongoing value)?  ongoing,TResult Function( Draw value)?  draw,TResult Function( CrossWins value)?  crossWins,TResult Function( NoughtWins value)?  noughtWins,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Ongoing() when ongoing != null:
return ongoing(_that);case Draw() when draw != null:
return draw(_that);case CrossWins() when crossWins != null:
return crossWins(_that);case NoughtWins() when noughtWins != null:
return noughtWins(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Ongoing value)  ongoing,required TResult Function( Draw value)  draw,required TResult Function( CrossWins value)  crossWins,required TResult Function( NoughtWins value)  noughtWins,}){
final _that = this;
switch (_that) {
case Ongoing():
return ongoing(_that);case Draw():
return draw(_that);case CrossWins():
return crossWins(_that);case NoughtWins():
return noughtWins(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Ongoing value)?  ongoing,TResult? Function( Draw value)?  draw,TResult? Function( CrossWins value)?  crossWins,TResult? Function( NoughtWins value)?  noughtWins,}){
final _that = this;
switch (_that) {
case Ongoing() when ongoing != null:
return ongoing(_that);case Draw() when draw != null:
return draw(_that);case CrossWins() when crossWins != null:
return crossWins(_that);case NoughtWins() when noughtWins != null:
return noughtWins(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  ongoing,TResult Function()?  draw,TResult Function( List<Position> winningPositions)?  crossWins,TResult Function( List<Position> winningPositions)?  noughtWins,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Ongoing() when ongoing != null:
return ongoing();case Draw() when draw != null:
return draw();case CrossWins() when crossWins != null:
return crossWins(_that.winningPositions);case NoughtWins() when noughtWins != null:
return noughtWins(_that.winningPositions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  ongoing,required TResult Function()  draw,required TResult Function( List<Position> winningPositions)  crossWins,required TResult Function( List<Position> winningPositions)  noughtWins,}) {final _that = this;
switch (_that) {
case Ongoing():
return ongoing();case Draw():
return draw();case CrossWins():
return crossWins(_that.winningPositions);case NoughtWins():
return noughtWins(_that.winningPositions);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  ongoing,TResult? Function()?  draw,TResult? Function( List<Position> winningPositions)?  crossWins,TResult? Function( List<Position> winningPositions)?  noughtWins,}) {final _that = this;
switch (_that) {
case Ongoing() when ongoing != null:
return ongoing();case Draw() when draw != null:
return draw();case CrossWins() when crossWins != null:
return crossWins(_that.winningPositions);case NoughtWins() when noughtWins != null:
return noughtWins(_that.winningPositions);case _:
  return null;

}
}

}

/// @nodoc


class Ongoing extends GameResult {
  const Ongoing(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Ongoing);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameResult.ongoing()';
}


}




/// @nodoc


class Draw extends GameResult {
  const Draw(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Draw);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameResult.draw()';
}


}




/// @nodoc


class CrossWins extends GameResult {
  const CrossWins({required final  List<Position> winningPositions}): _winningPositions = winningPositions,super._();
  

 final  List<Position> _winningPositions;
 List<Position> get winningPositions {
  if (_winningPositions is EqualUnmodifiableListView) return _winningPositions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_winningPositions);
}


/// Create a copy of GameResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CrossWinsCopyWith<CrossWins> get copyWith => _$CrossWinsCopyWithImpl<CrossWins>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CrossWins&&const DeepCollectionEquality().equals(other._winningPositions, _winningPositions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_winningPositions));

@override
String toString() {
  return 'GameResult.crossWins(winningPositions: $winningPositions)';
}


}

/// @nodoc
abstract mixin class $CrossWinsCopyWith<$Res> implements $GameResultCopyWith<$Res> {
  factory $CrossWinsCopyWith(CrossWins value, $Res Function(CrossWins) _then) = _$CrossWinsCopyWithImpl;
@useResult
$Res call({
 List<Position> winningPositions
});




}
/// @nodoc
class _$CrossWinsCopyWithImpl<$Res>
    implements $CrossWinsCopyWith<$Res> {
  _$CrossWinsCopyWithImpl(this._self, this._then);

  final CrossWins _self;
  final $Res Function(CrossWins) _then;

/// Create a copy of GameResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? winningPositions = null,}) {
  return _then(CrossWins(
winningPositions: null == winningPositions ? _self._winningPositions : winningPositions // ignore: cast_nullable_to_non_nullable
as List<Position>,
  ));
}


}

/// @nodoc


class NoughtWins extends GameResult {
  const NoughtWins({required final  List<Position> winningPositions}): _winningPositions = winningPositions,super._();
  

 final  List<Position> _winningPositions;
 List<Position> get winningPositions {
  if (_winningPositions is EqualUnmodifiableListView) return _winningPositions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_winningPositions);
}


/// Create a copy of GameResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NoughtWinsCopyWith<NoughtWins> get copyWith => _$NoughtWinsCopyWithImpl<NoughtWins>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoughtWins&&const DeepCollectionEquality().equals(other._winningPositions, _winningPositions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_winningPositions));

@override
String toString() {
  return 'GameResult.noughtWins(winningPositions: $winningPositions)';
}


}

/// @nodoc
abstract mixin class $NoughtWinsCopyWith<$Res> implements $GameResultCopyWith<$Res> {
  factory $NoughtWinsCopyWith(NoughtWins value, $Res Function(NoughtWins) _then) = _$NoughtWinsCopyWithImpl;
@useResult
$Res call({
 List<Position> winningPositions
});




}
/// @nodoc
class _$NoughtWinsCopyWithImpl<$Res>
    implements $NoughtWinsCopyWith<$Res> {
  _$NoughtWinsCopyWithImpl(this._self, this._then);

  final NoughtWins _self;
  final $Res Function(NoughtWins) _then;

/// Create a copy of GameResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? winningPositions = null,}) {
  return _then(NoughtWins(
winningPositions: null == winningPositions ? _self._winningPositions : winningPositions // ignore: cast_nullable_to_non_nullable
as List<Position>,
  ));
}


}

// dart format on
