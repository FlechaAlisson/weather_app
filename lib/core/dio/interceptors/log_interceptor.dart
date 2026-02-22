import 'dart:developer';

import 'package:dio/dio.dart';

class CustomLogInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    log(
      '┌── REQUEST ──────────────────────────────' +
          '\n│ ${options.method} ${options.uri}\n│ Body: ${options.data}\n└─────────────────────────────────────────',
    );
    super.onRequest(options, handler);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    log(
      '┌── RESPONSE ──────────────────────────────\n│  ${response.statusCode} : ${response.data}\n└─────────────────────────────────────────',
    );

    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log(
      '┌── ERROR ────────────────────────────────\n│ ${err.response?.statusCode} ${err.requestOptions.uri}\n│ ${err.message}\n└─────────────────────────────────────────',
    );
    handler.next(err);
  }
}
