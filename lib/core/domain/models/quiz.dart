import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz.freezed.dart';

@freezed
class QuizLoadingResultDto with _$QuizLoadingResultDto {
  const factory QuizLoadingResultDto.success(QuizDto quiz) =
      _QuizLoadingResultDtoSuccess;
  const factory QuizLoadingResultDto.failure(String errorMessage) =
      _QuizLoadingResultDtoFailure;
}

class QuizDto {
  final String question;
  final List<String> answers;
  final String correctAnswer;

  QuizDto({
    required this.question,
    required this.answers,
    required this.correctAnswer,
  });
}

@freezed
class QuizLoadingImageResultDto with _$QuizLoadingImageResultDto {
  const factory QuizLoadingImageResultDto.success(String imgUrl) =
      _QuizLoadingImageResultDtoSuccess;
  const factory QuizLoadingImageResultDto.failure(String errorMessage) =
      _QuizLoadingImageResultDtoFailure;
}
