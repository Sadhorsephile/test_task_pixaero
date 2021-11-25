import 'dart:developer';

import 'package:dio/dio.dart';

import '../client.dart';

const _apiBaseUlr = 'https://yesno.wtf/';

abstract class GetGifByAnswerApi {
  Future<String> call(AnswerType type);
}

class GetGifByAnswerApiImpl implements GetGifByAnswerApi {
  final _client = DioClientWrapper(Dio(BaseOptions(baseUrl: _apiBaseUlr)));

  @override
  Future<String> call(AnswerType type) async {
    final result = await _client.get(
      '/api',
      queryParameters: {'force': type.toParam},
    );

    try {
      final imgUrl = result.data['image'];

      return imgUrl;
    } catch (e, s) {
      log(e.toString(), stackTrace: s);
      throw Exception('Response data parsing error');
    }
  }
}

enum AnswerType {
  positive,
  negative,
}

extension on AnswerType {
  String get toParam {
    switch (this) {
      case AnswerType.positive:
        return 'yes';
      case AnswerType.negative:
        return 'no';
    }
  }
}
