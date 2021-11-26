import 'dart:convert';
import 'dart:developer';
import 'dart:math' show Random;

import 'package:dio/dio.dart';
import '../../models/quiz.dart';

import '../client.dart';

const _quizApiBaseUlr = 'https://lip2.xyz/';
const _countOfQuestions = 1;

abstract class GetQuizApi {
  Future<QuizNetworkDto> call();
}

class GetQuizApiImpl implements GetQuizApi {
  final _client = DioClientWrapper(Dio(BaseOptions(baseUrl: _quizApiBaseUlr)));

  @override
  Future<QuizNetworkDto> call() async {
    final result = await _client.get(
      '/api/millionaire.php',
      queryParameters: {
      // qType принимает значения от 1 до 3 включительно и обозначает сложность вопроса
        'qType': Random().nextInt(2) + 1,
        'count': _countOfQuestions,
      },
    );

    try {
      final firstQuestion =
          Map<String, dynamic>.from(jsonDecode(result.data)['data'].first);

      return firstQuestion.convertToQuizNetworkDto;
    } catch (e, s) {
      log(e.toString(), stackTrace: s);
      throw Exception('Response data parsing error');
    }
  }
}
