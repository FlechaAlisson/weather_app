import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/features/weather/data/models/forecast_model.dart';
import 'package:weather_app/features/weather/domain/entities/weather_entity.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@Freezed(toJson: false)
abstract class WeatherModel with _$WeatherModel {
  const WeatherModel._();

  const factory WeatherModel({
    required double latitude,
    required double longitude,
    required double elevation,
    required String timezone,
    @JsonKey(name: 'timezone_abbreviation')
    required String timezoneAbbreviation,
    @JsonKey(name: 'utc_offset_seconds') required int utcOffsetSeconds,
    @JsonKey(
      name: 'daily',
      fromJson: _forecastFromJson,
    )
    required ForecastModel daily,
    @JsonKey(
      name: 'current',
      fromJson: _readCurrentTemp,
    )
    required double tempCurrent,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);

  WeatherEntity toEntity() {
    return WeatherEntity(
      tempCurrent: tempCurrent,
      lat: latitude,
      long: longitude,
      forecast: daily.toEntityList(),
    );
  }
}

ForecastModel _forecastFromJson(Map<String, dynamic> json) =>
    ForecastModel.fromJson(json);

double _readCurrentTemp(Map<String, dynamic> current) {
  return (current['temperature_2m'] as num).toDouble();
}
