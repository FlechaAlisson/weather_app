// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForecastModel {

 List<String> get time;@JsonKey(name: 'temperature_2m_max') List<double> get temperature2mMax;@JsonKey(name: 'temperature_2m_min') List<double> get temperature2mMin;@JsonKey(name: 'precipitation_probability_max') List<double> get precipitationSum;
/// Create a copy of ForecastModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForecastModelCopyWith<ForecastModel> get copyWith => _$ForecastModelCopyWithImpl<ForecastModel>(this as ForecastModel, _$identity);

  /// Serializes this ForecastModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForecastModel&&const DeepCollectionEquality().equals(other.time, time)&&const DeepCollectionEquality().equals(other.temperature2mMax, temperature2mMax)&&const DeepCollectionEquality().equals(other.temperature2mMin, temperature2mMin)&&const DeepCollectionEquality().equals(other.precipitationSum, precipitationSum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(time),const DeepCollectionEquality().hash(temperature2mMax),const DeepCollectionEquality().hash(temperature2mMin),const DeepCollectionEquality().hash(precipitationSum));

@override
String toString() {
  return 'ForecastModel(time: $time, temperature2mMax: $temperature2mMax, temperature2mMin: $temperature2mMin, precipitationSum: $precipitationSum)';
}


}

/// @nodoc
abstract mixin class $ForecastModelCopyWith<$Res>  {
  factory $ForecastModelCopyWith(ForecastModel value, $Res Function(ForecastModel) _then) = _$ForecastModelCopyWithImpl;
@useResult
$Res call({
 List<String> time,@JsonKey(name: 'temperature_2m_max') List<double> temperature2mMax,@JsonKey(name: 'temperature_2m_min') List<double> temperature2mMin,@JsonKey(name: 'precipitation_probability_max') List<double> precipitationSum
});




}
/// @nodoc
class _$ForecastModelCopyWithImpl<$Res>
    implements $ForecastModelCopyWith<$Res> {
  _$ForecastModelCopyWithImpl(this._self, this._then);

  final ForecastModel _self;
  final $Res Function(ForecastModel) _then;

/// Create a copy of ForecastModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? time = null,Object? temperature2mMax = null,Object? temperature2mMin = null,Object? precipitationSum = null,}) {
  return _then(_self.copyWith(
time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as List<String>,temperature2mMax: null == temperature2mMax ? _self.temperature2mMax : temperature2mMax // ignore: cast_nullable_to_non_nullable
as List<double>,temperature2mMin: null == temperature2mMin ? _self.temperature2mMin : temperature2mMin // ignore: cast_nullable_to_non_nullable
as List<double>,precipitationSum: null == precipitationSum ? _self.precipitationSum : precipitationSum // ignore: cast_nullable_to_non_nullable
as List<double>,
  ));
}

}


/// Adds pattern-matching-related methods to [ForecastModel].
extension ForecastModelPatterns on ForecastModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForecastModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForecastModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForecastModel value)  $default,){
final _that = this;
switch (_that) {
case _ForecastModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForecastModel value)?  $default,){
final _that = this;
switch (_that) {
case _ForecastModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> time, @JsonKey(name: 'temperature_2m_max')  List<double> temperature2mMax, @JsonKey(name: 'temperature_2m_min')  List<double> temperature2mMin, @JsonKey(name: 'precipitation_probability_max')  List<double> precipitationSum)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForecastModel() when $default != null:
return $default(_that.time,_that.temperature2mMax,_that.temperature2mMin,_that.precipitationSum);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> time, @JsonKey(name: 'temperature_2m_max')  List<double> temperature2mMax, @JsonKey(name: 'temperature_2m_min')  List<double> temperature2mMin, @JsonKey(name: 'precipitation_probability_max')  List<double> precipitationSum)  $default,) {final _that = this;
switch (_that) {
case _ForecastModel():
return $default(_that.time,_that.temperature2mMax,_that.temperature2mMin,_that.precipitationSum);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> time, @JsonKey(name: 'temperature_2m_max')  List<double> temperature2mMax, @JsonKey(name: 'temperature_2m_min')  List<double> temperature2mMin, @JsonKey(name: 'precipitation_probability_max')  List<double> precipitationSum)?  $default,) {final _that = this;
switch (_that) {
case _ForecastModel() when $default != null:
return $default(_that.time,_that.temperature2mMax,_that.temperature2mMin,_that.precipitationSum);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ForecastModel extends ForecastModel {
  const _ForecastModel({required final  List<String> time, @JsonKey(name: 'temperature_2m_max') required final  List<double> temperature2mMax, @JsonKey(name: 'temperature_2m_min') required final  List<double> temperature2mMin, @JsonKey(name: 'precipitation_probability_max') required final  List<double> precipitationSum}): _time = time,_temperature2mMax = temperature2mMax,_temperature2mMin = temperature2mMin,_precipitationSum = precipitationSum,super._();
  factory _ForecastModel.fromJson(Map<String, dynamic> json) => _$ForecastModelFromJson(json);

 final  List<String> _time;
@override List<String> get time {
  if (_time is EqualUnmodifiableListView) return _time;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_time);
}

 final  List<double> _temperature2mMax;
@override@JsonKey(name: 'temperature_2m_max') List<double> get temperature2mMax {
  if (_temperature2mMax is EqualUnmodifiableListView) return _temperature2mMax;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_temperature2mMax);
}

 final  List<double> _temperature2mMin;
@override@JsonKey(name: 'temperature_2m_min') List<double> get temperature2mMin {
  if (_temperature2mMin is EqualUnmodifiableListView) return _temperature2mMin;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_temperature2mMin);
}

 final  List<double> _precipitationSum;
@override@JsonKey(name: 'precipitation_probability_max') List<double> get precipitationSum {
  if (_precipitationSum is EqualUnmodifiableListView) return _precipitationSum;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_precipitationSum);
}


/// Create a copy of ForecastModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForecastModelCopyWith<_ForecastModel> get copyWith => __$ForecastModelCopyWithImpl<_ForecastModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ForecastModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForecastModel&&const DeepCollectionEquality().equals(other._time, _time)&&const DeepCollectionEquality().equals(other._temperature2mMax, _temperature2mMax)&&const DeepCollectionEquality().equals(other._temperature2mMin, _temperature2mMin)&&const DeepCollectionEquality().equals(other._precipitationSum, _precipitationSum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_time),const DeepCollectionEquality().hash(_temperature2mMax),const DeepCollectionEquality().hash(_temperature2mMin),const DeepCollectionEquality().hash(_precipitationSum));

@override
String toString() {
  return 'ForecastModel(time: $time, temperature2mMax: $temperature2mMax, temperature2mMin: $temperature2mMin, precipitationSum: $precipitationSum)';
}


}

/// @nodoc
abstract mixin class _$ForecastModelCopyWith<$Res> implements $ForecastModelCopyWith<$Res> {
  factory _$ForecastModelCopyWith(_ForecastModel value, $Res Function(_ForecastModel) _then) = __$ForecastModelCopyWithImpl;
@override @useResult
$Res call({
 List<String> time,@JsonKey(name: 'temperature_2m_max') List<double> temperature2mMax,@JsonKey(name: 'temperature_2m_min') List<double> temperature2mMin,@JsonKey(name: 'precipitation_probability_max') List<double> precipitationSum
});




}
/// @nodoc
class __$ForecastModelCopyWithImpl<$Res>
    implements _$ForecastModelCopyWith<$Res> {
  __$ForecastModelCopyWithImpl(this._self, this._then);

  final _ForecastModel _self;
  final $Res Function(_ForecastModel) _then;

/// Create a copy of ForecastModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? time = null,Object? temperature2mMax = null,Object? temperature2mMin = null,Object? precipitationSum = null,}) {
  return _then(_ForecastModel(
time: null == time ? _self._time : time // ignore: cast_nullable_to_non_nullable
as List<String>,temperature2mMax: null == temperature2mMax ? _self._temperature2mMax : temperature2mMax // ignore: cast_nullable_to_non_nullable
as List<double>,temperature2mMin: null == temperature2mMin ? _self._temperature2mMin : temperature2mMin // ignore: cast_nullable_to_non_nullable
as List<double>,precipitationSum: null == precipitationSum ? _self._precipitationSum : precipitationSum // ignore: cast_nullable_to_non_nullable
as List<double>,
  ));
}


}

// dart format on
