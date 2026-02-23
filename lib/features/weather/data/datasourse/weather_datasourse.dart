import 'package:flutter_timezone/flutter_timezone.dart';

import 'package:weather_app/core/dio/weather_dio_client.dart';
import '../models/weather_model.dart';

class WeatherDatasource {
  final WeatherDioClient _client;

  WeatherDatasource(this._client);

  Future<WeatherModel> getWeatherByCoordinates(
    double lat,
    double lon,
    String tempUnit,
  ) async {
    final TimezoneInfo timezoneInfo = await FlutterTimezone.getLocalTimezone();
    final response = await _client.get(
      '/v1/forecast',
      queryParam: {
        'latitude': lat,
        'longitude': lon,
        'daily':
            'temperature_2m_max,temperature_2m_min,precipitation_probability_max',
        'forecast_days': '10',
        'current': 'temperature_2m',
        'temperature_unit': tempUnit == 'C' ? 'celsius' : 'fahrenheit',
        'timezone': timezoneInfo.identifier,
      },
    );
    return WeatherModel.fromJson(response.data);
  }
}
