import 'package:weather_app/features/location/domain/entities/address.dart';
import 'package:weather_app/features/location/domain/repositories/location_repository.dart';

abstract class IFetchAddressUseCase {
  Future<List<AddressEntity>> call(String query);
}

class FetchAddressUseCase implements IFetchAddressUseCase {
  final LocationRepository _locationRepository;

  FetchAddressUseCase(this._locationRepository);

  @override
  Future<List<AddressEntity>> call(String query) =>
      _locationRepository.getAddressList(query);
}
