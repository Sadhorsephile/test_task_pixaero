import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:test_task_pixaero/core/data/models/quiz.dart';

const _quizApiBaseUlr = 'https://lip2.xyz/';
const _typeOfQuestions = 1;
const _countOfQuestions = 1;

abstract class GetQuizApi {
  Future<QuizNetworkDto> call();
}

class GetQuizApiImpl implements GetQuizApi {
  final _client = Dio(BaseOptions(baseUrl: _quizApiBaseUlr));

  @override
  Future<QuizNetworkDto> call() async {
    final result = await _client.get(
      '/api/millionaire.php',
      queryParameters: {
        'qType': _typeOfQuestions,
        'count': _countOfQuestions,
      },
    );

    if (result.statusCode != 200) {
      throw Exception(
          'Query error: code ${result.statusCode}, message: ${result.statusMessage}');
    }

    try {
      final firstQuestion = result.data['data'] as Map<String, dynamic>;

      return firstQuestion.convertToQuizNetworkDto;
    } catch (e, s) {
      log(e.toString(), stackTrace: s);
      throw Exception('Response data parsing error');
    }
  }
}
