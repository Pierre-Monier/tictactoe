// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cell.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Cell {

 Position get position;
/// Create a copy of Cell
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CellCopyWith<Cell> get copyWith => _$CellCopyWithImpl<Cell>(this as Cell, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Cell&&(identical(other.position, position) || other.position == position));
}


@override
int get hashCode => Object.hash(runtimeType,position);

@override
String toString() {
  return 'Cell(position: $position)';
}


}

/// @nodoc
abstract mixin class $CellCopyWith<$Res>  {
  factory $CellCopyWith(Cell value, $Res Function(Cell) _then) = _$CellCopyWithImpl;
@useResult
$Res call({
 Position position
});


$PositionCopyWith<$Res> get position;

}
/// @nodoc
class _$CellCopyWithImpl<$Res>
    implements $CellCopyWith<$Res> {
  _$CellCopyWithImpl(this._self, this._then);

  final Cell _self;
  final $Res Function(Cell) _then;

/// Create a copy of Cell
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? position = null,}) {
  return _then(_self.copyWith(
position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as Position,
  ));
}
/// Create a copy of Cell
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PositionCopyWith<$Res> get position {
  
  return $PositionCopyWith<$Res>(_self.position, (value) {
    return _then(_self.copyWith(position: value));
  });
}
}


/// Adds pattern-matching-related methods to [Cell].
extension CellPatterns on Cell {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( EmptyCell value)?  empty,TResult Function( CrossCell value)?  cross,TResult Function( NoughtCell value)?  nought,required TResult orElse(),}){
final _that = this;
switch (_that) {
case EmptyCell() when empty != null:
return empty(_that);case CrossCell() when cross != null:
return cross(_that);case NoughtCell() when nought != null:
return nought(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( EmptyCell value)  empty,required TResult Function( CrossCell value)  cross,required TResult Function( NoughtCell value)  nought,}){
final _that = this;
switch (_that) {
case EmptyCell():
return empty(_that);case CrossCell():
return cross(_that);case NoughtCell():
return nought(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( EmptyCell value)?  empty,TResult? Function( CrossCell value)?  cross,TResult? Function( NoughtCell value)?  nought,}){
final _that = this;
switch (_that) {
case EmptyCell() when empty != null:
return empty(_that);case CrossCell() when cross != null:
return cross(_that);case NoughtCell() when nought != null:
return nought(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Position position)?  empty,TResult Function( Position position)?  cross,TResult Function( Position position)?  nought,required TResult orElse(),}) {final _that = this;
switch (_that) {
case EmptyCell() when empty != null:
return empty(_that.position);case CrossCell() when cross != null:
return cross(_that.position);case NoughtCell() when nought != null:
return nought(_that.position);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Position position)  empty,required TResult Function( Position position)  cross,required TResult Function( Position position)  nought,}) {final _that = this;
switch (_that) {
case EmptyCell():
return empty(_that.position);case CrossCell():
return cross(_that.position);case NoughtCell():
return nought(_that.position);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Position position)?  empty,TResult? Function( Position position)?  cross,TResult? Function( Position position)?  nought,}) {final _that = this;
switch (_that) {
case EmptyCell() when empty != null:
return empty(_that.position);case CrossCell() when cross != null:
return cross(_that.position);case NoughtCell() when nought != null:
return nought(_that.position);case _:
  return null;

}
}

}

/// @nodoc


class EmptyCell implements Cell {
  const EmptyCell(this.position);
  

@override final  Position position;

/// Create a copy of Cell
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmptyCellCopyWith<EmptyCell> get copyWith => _$EmptyCellCopyWithImpl<EmptyCell>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmptyCell&&(identical(other.position, position) || other.position == position));
}


@override
int get hashCode => Object.hash(runtimeType,position);

@override
String toString() {
  return 'Cell.empty(position: $position)';
}


}

/// @nodoc
abstract mixin class $EmptyCellCopyWith<$Res> implements $CellCopyWith<$Res> {
  factory $EmptyCellCopyWith(EmptyCell value, $Res Function(EmptyCell) _then) = _$EmptyCellCopyWithImpl;
@override @useResult
$Res call({
 Position position
});


@override $PositionCopyWith<$Res> get position;

}
/// @nodoc
class _$EmptyCellCopyWithImpl<$Res>
    implements $EmptyCellCopyWith<$Res> {
  _$EmptyCellCopyWithImpl(this._self, this._then);

  final EmptyCell _self;
  final $Res Function(EmptyCell) _then;

/// Create a copy of Cell
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? position = null,}) {
  return _then(EmptyCell(
null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as Position,
  ));
}

/// Create a copy of Cell
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PositionCopyWith<$Res> get position {
  
  return $PositionCopyWith<$Res>(_self.position, (value) {
    return _then(_self.copyWith(position: value));
  });
}
}

/// @nodoc


class CrossCell implements Cell {
  const CrossCell(this.position);
  

@override final  Position position;

/// Create a copy of Cell
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CrossCellCopyWith<CrossCell> get copyWith => _$CrossCellCopyWithImpl<CrossCell>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CrossCell&&(identical(other.position, position) || other.position == position));
}


@override
int get hashCode => Object.hash(runtimeType,position);

@override
String toString() {
  return 'Cell.cross(position: $position)';
}


}

/// @nodoc
abstract mixin class $CrossCellCopyWith<$Res> implements $CellCopyWith<$Res> {
  factory $CrossCellCopyWith(CrossCell value, $Res Function(CrossCell) _then) = _$CrossCellCopyWithImpl;
@override @useResult
$Res call({
 Position position
});


@override $PositionCopyWith<$Res> get position;

}
/// @nodoc
class _$CrossCellCopyWithImpl<$Res>
    implements $CrossCellCopyWith<$Res> {
  _$CrossCellCopyWithImpl(this._self, this._then);

  final CrossCell _self;
  final $Res Function(CrossCell) _then;

/// Create a copy of Cell
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? position = null,}) {
  return _then(CrossCell(
null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as Position,
  ));
}

/// Create a copy of Cell
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PositionCopyWith<$Res> get position {
  
  return $PositionCopyWith<$Res>(_self.position, (value) {
    return _then(_self.copyWith(position: value));
  });
}
}

/// @nodoc


class NoughtCell implements Cell {
  const NoughtCell(this.position);
  

@override final  Position position;

/// Create a copy of Cell
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NoughtCellCopyWith<NoughtCell> get copyWith => _$NoughtCellCopyWithImpl<NoughtCell>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoughtCell&&(identical(other.position, position) || other.position == position));
}


@override
int get hashCode => Object.hash(runtimeType,position);

@override
String toString() {
  return 'Cell.nought(position: $position)';
}


}

/// @nodoc
abstract mixin class $NoughtCellCopyWith<$Res> implements $CellCopyWith<$Res> {
  factory $NoughtCellCopyWith(NoughtCell value, $Res Function(NoughtCell) _then) = _$NoughtCellCopyWithImpl;
@override @useResult
$Res call({
 Position position
});


@override $PositionCopyWith<$Res> get position;

}
/// @nodoc
class _$NoughtCellCopyWithImpl<$Res>
    implements $NoughtCellCopyWith<$Res> {
  _$NoughtCellCopyWithImpl(this._self, this._then);

  final NoughtCell _self;
  final $Res Function(NoughtCell) _then;

/// Create a copy of Cell
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? position = null,}) {
  return _then(NoughtCell(
null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as Position,
  ));
}

/// Create a copy of Cell
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PositionCopyWith<$Res> get position {
  
  return $PositionCopyWith<$Res>(_self.position, (value) {
    return _then(_self.copyWith(position: value));
  });
}
}

// dart format on
