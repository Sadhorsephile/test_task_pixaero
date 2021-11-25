import 'dart:developer';

import 'package:dio/dio.dart';

class DioClientWrapper {
  final Dio _client;

  DioClientWrapper(this._client);

  Future<Response> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onReceiveProgress,
  }) async {
    try {
      final result = await _client.get(
        path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );

      if (result.statusCode != 200) {
        throw Exception(
            'Query error: code ${result.statusCode}, message: ${result.statusMessage}');
      }
      return result;

    } catch (e, s) {
      log(e.toString(), stackTrace: s);
      throw Exception('Response sending error');
    }
    
  }
}
