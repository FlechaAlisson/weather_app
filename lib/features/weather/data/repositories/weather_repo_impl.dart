import 'package:weather_app/features/weather/data/datasourse/weather_datasourse.dart';
import 'package:weather_app/features/weather/domain/entities/weather_entity.dart';
import 'package:weather_app/features/weather/domain/repositories/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherDatasource _weatherDatasource;

  WeatherRepositoryImpl(this._weatherDatasource);

  @override
  Future<WeatherEntity> getWeatherByCoordinates(
    double lat,
    double lon,
    String tempUnit,
  ) async {
    final model = await _weatherDatasource.getWeatherByCoordinates(
      lat,
      lon,
      tempUnit,
    );
    return model.toEntity();
  }
}
