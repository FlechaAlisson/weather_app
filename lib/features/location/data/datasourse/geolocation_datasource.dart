import 'package:dio/dio.dart';
import 'package:weather_app/core/dio/geo_dio_client.dart';
import 'package:weather_app/features/location/data/models/address_model.dart';
import 'package:weather_app/features/location/domain/entities/address.dart';

class GeolocationDatasource {
  final GeoDioClient _client;

  GeolocationDatasource(this._client);

  Future<List<AddressEntity>> searchAddress(String query) async {
    final response = await _client.get(
      '/search',
      queryParam: {
        'q': query,
        'format': 'jsonv2',
        'addressdetails': '1',
        'limit': '3',
      },
      options: Options(
        headers: {
          'User-Agent': 'weather-app',
        },
      ),
    );

    final results = response.data as List;
    if (results.isEmpty) return [];

    return results
        .map((e) => AddressModel.fromJson(e as Map<String, dynamic>).toEntity())
        .toList();
  }
}
