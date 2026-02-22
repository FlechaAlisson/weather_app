// ignore: implementation_imports, depend_on_referenced_packages
import 'package:geolocator_platform_interface/src/models/position.dart';
import 'package:weather_app/features/location/data/datasourse/geolocation_datasource.dart';
import 'package:weather_app/features/location/data/datasourse/location_datasourse.dart';
import 'package:weather_app/features/location/domain/entities/address.dart';
import 'package:weather_app/features/location/domain/repositories/location_repository.dart';

class LocationRepoImpl implements LocationRepository {
  final LocationDatasource _locationDatasource;
  final GeolocationDatasource _geolocationDatasource;

  LocationRepoImpl(this._locationDatasource, this._geolocationDatasource);

  @override
  Future<Position> getCurrentPosition() =>
      _locationDatasource.getCurrentPosition();

  @override
  Future<List<AddressEntity>> getAddressList(String query) =>
      _geolocationDatasource.searchAddress(query);
}
