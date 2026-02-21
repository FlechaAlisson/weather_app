import 'package:geolocator/geolocator.dart';
import 'package:weather_app/features/location/domain/repositories/location_repository.dart';

abstract class IGetCurrentLocationUseCase {
  Future<Position> call();
}

class GetCurrentLocationUseCase implements IGetCurrentLocationUseCase {
  final LocationRepository _locationRepository;

  GetCurrentLocationUseCase(this._locationRepository);

  @override
  Future<Position> call() => _locationRepository.getCurrentPosition();
}
