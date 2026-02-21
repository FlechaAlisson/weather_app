import 'package:geolocator/geolocator.dart';
import 'package:weather_app/features/location/domain/repositories/location_repository.dart';
import 'package:weather_app/features/weather/domain/entities/weather_entity.dart';
import 'package:weather_app/features/weather/domain/repositories/weather_repository.dart';

abstract class IGetWeatherCurrentLocationUseCase {
  Future<WeatherEntity> call();
}

class GetWeatherCurrentLocationUseCase
    implements IGetWeatherCurrentLocationUseCase {
  final WeatherRepository _weatherRepo;
  final LocationRepository _locationRepository;

  GetWeatherCurrentLocationUseCase(this._weatherRepo, this._locationRepository);

  @override
  Future<WeatherEntity> call() async {
    final Position position = await _locationRepository.getCurrentPosition();
    return await _weatherRepo.getWeatherByCoordinates(
      position.latitude,
      position.longitude,
    );
  }
}
