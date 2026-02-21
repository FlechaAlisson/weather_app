import 'package:weather_app/features/weather/domain/entities/forecast_entity.dart';

class WeatherEntity {
  final double lat;
  final double long;
  final List<ForecastEntity> forecast;
  final double tempCurrent;

  const WeatherEntity({
    required this.tempCurrent,
    required this.lat,
    required this.long,
    required this.forecast,
  });
}
