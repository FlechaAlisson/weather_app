// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) =>
    _WeatherModel(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      elevation: (json['elevation'] as num).toDouble(),
      timezone: json['timezone'] as String,
      timezoneAbbreviation: json['timezone_abbreviation'] as String,
      utcOffsetSeconds: (json['utc_offset_seconds'] as num).toInt(),
      daily: _forecastFromJson(json['daily'] as Map<String, dynamic>),
      tempCurrent: _readCurrentTemp(json['current'] as Map<String, dynamic>),
    );
