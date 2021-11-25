import '../models/quiz.dart';
import '../network/api/get_gif.dart';
import '../network/api/get_quiz.dart';

import '../../domain/models/quiz.dart';

abstract class QuizRepository {
  Future<QuizLoadingResultDto> get oneRandomQuestion;
  Future<QuizLoadingImageResultDto> get imageOnPositiveResult;
  Future<QuizLoadingImageResultDto> get imageOnNegativeResult;
}

class QuizRepositoryImpl implements QuizRepository {
  final GetQuizApi _getQuizApi;
  final GetGifByAnswerApi _getGifByAnswerApi;

  QuizRepositoryImpl(this._getQuizApi, this._getGifByAnswerApi);

  @override
  Future<QuizLoadingResultDto> get oneRandomQuestion async {
    try {
      final result = await _getQuizApi();
      return QuizLoadingResultDto.success(result.toQuizDto);
    } on Exception catch (e) {
      return QuizLoadingResultDto.failure(e.toString());
    }
  }

  @override
  Future<QuizLoadingImageResultDto> get imageOnNegativeResult async {
     try {
      final result = await _getGifByAnswerApi(AnswerType.negative);
      return QuizLoadingImageResultDto.success(result);
    } on Exception catch (e) {
      return QuizLoadingImageResultDto.failure(e.toString());
    }
  }

  @override
  Future<QuizLoadingImageResultDto> get imageOnPositiveResult async {
    try {
      final result = await _getGifByAnswerApi(AnswerType.positive);
      return QuizLoadingImageResultDto.success(result);
    } on Exception catch (e) {
      return QuizLoadingImageResultDto.failure(e.toString());
    }
  }
}

extension DomainQuizConverter on QuizNetworkDto {
  QuizDto get toQuizDto {
    final correctAnswer = answers[id];
     
    return QuizDto(
      question: question,
      answers: answers..shuffle(),
      correctAnswer: correctAnswer,
    );
  }
}
