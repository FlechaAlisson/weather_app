import 'package:dio/dio.dart';
import 'package:weather_app/core/dio/interceptors/log_interceptor.dart';

class DioClient {
  String baseUrl;
  late final Dio _dio;

  DioClient({required this.baseUrl}) {
    _dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(
          seconds: 10,
        ),
        receiveTimeout: const Duration(
          seconds: 10,
        ),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    _dio.interceptors.addAll([CustomLogInterceptor()]);
  }

  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParam,
    Options? options,
  }) => _dio.get(
    path,
    queryParameters: queryParam,
    options: options,
  );
}
