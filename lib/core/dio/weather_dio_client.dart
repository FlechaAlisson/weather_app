import 'package:weather_app/core/dio/dio_client.dart';

class WeatherDioClient extends DioClient {
  WeatherDioClient() : super(baseUrl: 'https://api.open-meteo.com');
}
