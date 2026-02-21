import 'package:weather_app/core/dio/dio_client.dart';

class GeoDioClient extends DioClient {
  GeoDioClient() : super(baseUrl: 'https://nominatim.openstreetmap.org');
}
