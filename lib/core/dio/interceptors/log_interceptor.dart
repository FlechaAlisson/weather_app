import 'dart:developer';

import 'package:dio/dio.dart';

class CustomLogInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    log('┌── REQUEST ──────────────────────────────');
    log('│ ${options.method} ${options.uri}');
    if (options.data != null) log('│ Body: ${options.data}');
    log('└─────────────────────────────────────────');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    log('┌── RESPONSE ──────────────────────────────');
    log('│  ${response.statusCode} : ${response.data}');
    log('└─────────────────────────────────────────');

    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log('┌── ERROR ────────────────────────────────');
    log('│ ${err.response?.statusCode} ${err.requestOptions.uri}');
    log('│ ${err.message}');
    log('└─────────────────────────────────────────');
    handler.next(err);
  }
}
