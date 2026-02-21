// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherModel {

 double get latitude; double get longitude; double get elevation; String get timezone;@JsonKey(name: 'timezone_abbreviation') String get timezoneAbbreviation;@JsonKey(name: 'utc_offset_seconds') int get utcOffsetSeconds;@JsonKey(name: 'daily', fromJson: _forecastFromJson) ForecastModel get daily;@JsonKey(name: 'current', fromJson: _readCurrentTemp) double get tempCurrent;
/// Create a copy of WeatherModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherModelCopyWith<WeatherModel> get copyWith => _$WeatherModelCopyWithImpl<WeatherModel>(this as WeatherModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherModel&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.elevation, elevation) || other.elevation == elevation)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.timezoneAbbreviation, timezoneAbbreviation) || other.timezoneAbbreviation == timezoneAbbreviation)&&(identical(other.utcOffsetSeconds, utcOffsetSeconds) || other.utcOffsetSeconds == utcOffsetSeconds)&&(identical(other.daily, daily) || other.daily == daily)&&(identical(other.tempCurrent, tempCurrent) || other.tempCurrent == tempCurrent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,elevation,timezone,timezoneAbbreviation,utcOffsetSeconds,daily,tempCurrent);

@override
String toString() {
  return 'WeatherModel(latitude: $latitude, longitude: $longitude, elevation: $elevation, timezone: $timezone, timezoneAbbreviation: $timezoneAbbreviation, utcOffsetSeconds: $utcOffsetSeconds, daily: $daily, tempCurrent: $tempCurrent)';
}


}

/// @nodoc
abstract mixin class $WeatherModelCopyWith<$Res>  {
  factory $WeatherModelCopyWith(WeatherModel value, $Res Function(WeatherModel) _then) = _$WeatherModelCopyWithImpl;
@useResult
$Res call({
 double latitude, double longitude, double elevation, String timezone,@JsonKey(name: 'timezone_abbreviation') String timezoneAbbreviation,@JsonKey(name: 'utc_offset_seconds') int utcOffsetSeconds,@JsonKey(name: 'daily', fromJson: _forecastFromJson) ForecastModel daily,@JsonKey(name: 'current', fromJson: _readCurrentTemp) double tempCurrent
});


$ForecastModelCopyWith<$Res> get daily;

}
/// @nodoc
class _$WeatherModelCopyWithImpl<$Res>
    implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._self, this._then);

  final WeatherModel _self;
  final $Res Function(WeatherModel) _then;

/// Create a copy of WeatherModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latitude = null,Object? longitude = null,Object? elevation = null,Object? timezone = null,Object? timezoneAbbreviation = null,Object? utcOffsetSeconds = null,Object? daily = null,Object? tempCurrent = null,}) {
  return _then(_self.copyWith(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,elevation: null == elevation ? _self.elevation : elevation // ignore: cast_nullable_to_non_nullable
as double,timezone: null == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String,timezoneAbbreviation: null == timezoneAbbreviation ? _self.timezoneAbbreviation : timezoneAbbreviation // ignore: cast_nullable_to_non_nullable
as String,utcOffsetSeconds: null == utcOffsetSeconds ? _self.utcOffsetSeconds : utcOffsetSeconds // ignore: cast_nullable_to_non_nullable
as int,daily: null == daily ? _self.daily : daily // ignore: cast_nullable_to_non_nullable
as ForecastModel,tempCurrent: null == tempCurrent ? _self.tempCurrent : tempCurrent // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of WeatherModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ForecastModelCopyWith<$Res> get daily {
  
  return $ForecastModelCopyWith<$Res>(_self.daily, (value) {
    return _then(_self.copyWith(daily: value));
  });
}
}


/// Adds pattern-matching-related methods to [WeatherModel].
extension WeatherModelPatterns on WeatherModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeatherModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeatherModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeatherModel value)  $default,){
final _that = this;
switch (_that) {
case _WeatherModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeatherModel value)?  $default,){
final _that = this;
switch (_that) {
case _WeatherModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double latitude,  double longitude,  double elevation,  String timezone, @JsonKey(name: 'timezone_abbreviation')  String timezoneAbbreviation, @JsonKey(name: 'utc_offset_seconds')  int utcOffsetSeconds, @JsonKey(name: 'daily', fromJson: _forecastFromJson)  ForecastModel daily, @JsonKey(name: 'current', fromJson: _readCurrentTemp)  double tempCurrent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeatherModel() when $default != null:
return $default(_that.latitude,_that.longitude,_that.elevation,_that.timezone,_that.timezoneAbbreviation,_that.utcOffsetSeconds,_that.daily,_that.tempCurrent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double latitude,  double longitude,  double elevation,  String timezone, @JsonKey(name: 'timezone_abbreviation')  String timezoneAbbreviation, @JsonKey(name: 'utc_offset_seconds')  int utcOffsetSeconds, @JsonKey(name: 'daily', fromJson: _forecastFromJson)  ForecastModel daily, @JsonKey(name: 'current', fromJson: _readCurrentTemp)  double tempCurrent)  $default,) {final _that = this;
switch (_that) {
case _WeatherModel():
return $default(_that.latitude,_that.longitude,_that.elevation,_that.timezone,_that.timezoneAbbreviation,_that.utcOffsetSeconds,_that.daily,_that.tempCurrent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double latitude,  double longitude,  double elevation,  String timezone, @JsonKey(name: 'timezone_abbreviation')  String timezoneAbbreviation, @JsonKey(name: 'utc_offset_seconds')  int utcOffsetSeconds, @JsonKey(name: 'daily', fromJson: _forecastFromJson)  ForecastModel daily, @JsonKey(name: 'current', fromJson: _readCurrentTemp)  double tempCurrent)?  $default,) {final _that = this;
switch (_that) {
case _WeatherModel() when $default != null:
return $default(_that.latitude,_that.longitude,_that.elevation,_that.timezone,_that.timezoneAbbreviation,_that.utcOffsetSeconds,_that.daily,_that.tempCurrent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _WeatherModel extends WeatherModel {
  const _WeatherModel({required this.latitude, required this.longitude, required this.elevation, required this.timezone, @JsonKey(name: 'timezone_abbreviation') required this.timezoneAbbreviation, @JsonKey(name: 'utc_offset_seconds') required this.utcOffsetSeconds, @JsonKey(name: 'daily', fromJson: _forecastFromJson) required this.daily, @JsonKey(name: 'current', fromJson: _readCurrentTemp) required this.tempCurrent}): super._();
  factory _WeatherModel.fromJson(Map<String, dynamic> json) => _$WeatherModelFromJson(json);

@override final  double latitude;
@override final  double longitude;
@override final  double elevation;
@override final  String timezone;
@override@JsonKey(name: 'timezone_abbreviation') final  String timezoneAbbreviation;
@override@JsonKey(name: 'utc_offset_seconds') final  int utcOffsetSeconds;
@override@JsonKey(name: 'daily', fromJson: _forecastFromJson) final  ForecastModel daily;
@override@JsonKey(name: 'current', fromJson: _readCurrentTemp) final  double tempCurrent;

/// Create a copy of WeatherModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherModelCopyWith<_WeatherModel> get copyWith => __$WeatherModelCopyWithImpl<_WeatherModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherModel&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.elevation, elevation) || other.elevation == elevation)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.timezoneAbbreviation, timezoneAbbreviation) || other.timezoneAbbreviation == timezoneAbbreviation)&&(identical(other.utcOffsetSeconds, utcOffsetSeconds) || other.utcOffsetSeconds == utcOffsetSeconds)&&(identical(other.daily, daily) || other.daily == daily)&&(identical(other.tempCurrent, tempCurrent) || other.tempCurrent == tempCurrent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,elevation,timezone,timezoneAbbreviation,utcOffsetSeconds,daily,tempCurrent);

@override
String toString() {
  return 'WeatherModel(latitude: $latitude, longitude: $longitude, elevation: $elevation, timezone: $timezone, timezoneAbbreviation: $timezoneAbbreviation, utcOffsetSeconds: $utcOffsetSeconds, daily: $daily, tempCurrent: $tempCurrent)';
}


}

/// @nodoc
abstract mixin class _$WeatherModelCopyWith<$Res> implements $WeatherModelCopyWith<$Res> {
  factory _$WeatherModelCopyWith(_WeatherModel value, $Res Function(_WeatherModel) _then) = __$WeatherModelCopyWithImpl;
@override @useResult
$Res call({
 double latitude, double longitude, double elevation, String timezone,@JsonKey(name: 'timezone_abbreviation') String timezoneAbbreviation,@JsonKey(name: 'utc_offset_seconds') int utcOffsetSeconds,@JsonKey(name: 'daily', fromJson: _forecastFromJson) ForecastModel daily,@JsonKey(name: 'current', fromJson: _readCurrentTemp) double tempCurrent
});


@override $ForecastModelCopyWith<$Res> get daily;

}
/// @nodoc
class __$WeatherModelCopyWithImpl<$Res>
    implements _$WeatherModelCopyWith<$Res> {
  __$WeatherModelCopyWithImpl(this._self, this._then);

  final _WeatherModel _self;
  final $Res Function(_WeatherModel) _then;

/// Create a copy of WeatherModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = null,Object? longitude = null,Object? elevation = null,Object? timezone = null,Object? timezoneAbbreviation = null,Object? utcOffsetSeconds = null,Object? daily = null,Object? tempCurrent = null,}) {
  return _then(_WeatherModel(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,elevation: null == elevation ? _self.elevation : elevation // ignore: cast_nullable_to_non_nullable
as double,timezone: null == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String,timezoneAbbreviation: null == timezoneAbbreviation ? _self.timezoneAbbreviation : timezoneAbbreviation // ignore: cast_nullable_to_non_nullable
as String,utcOffsetSeconds: null == utcOffsetSeconds ? _self.utcOffsetSeconds : utcOffsetSeconds // ignore: cast_nullable_to_non_nullable
as int,daily: null == daily ? _self.daily : daily // ignore: cast_nullable_to_non_nullable
as ForecastModel,tempCurrent: null == tempCurrent ? _self.tempCurrent : tempCurrent // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of WeatherModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ForecastModelCopyWith<$Res> get daily {
  
  return $ForecastModelCopyWith<$Res>(_self.daily, (value) {
    return _then(_self.copyWith(daily: value));
  });
}
}

// dart format on
