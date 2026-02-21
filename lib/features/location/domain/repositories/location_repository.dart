import 'package:geolocator/geolocator.dart';
import 'package:weather_app/features/location/domain/entities/address.dart';

abstract class LocationRepository {
  Future<Position> getCurrentPosition();
  Future<List<AddressEntity>> getAddressList(String query);
}
