import 'package:weather_app/features/weather/domain/entities/weather_entity.dart';
import 'package:weather_app/features/weather/domain/repositories/weather_repository.dart';

abstract class IGetWeatherFromLocationUseCase {
  Future<WeatherEntity> call(double lat, double long);
}

class GetWeatherFromLocation implements IGetWeatherFromLocationUseCase {
  final WeatherRepository _weatherRepo;

  GetWeatherFromLocation(this._weatherRepo);

  @override
  Future<WeatherEntity> call(double lat, double long) {
    return _weatherRepo.getWeatherByCoordinates(
      lat,
      long,
    );
  }
}
