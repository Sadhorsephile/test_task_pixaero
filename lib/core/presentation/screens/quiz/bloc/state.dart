import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../domain/models/quiz.dart';

part 'state.freezed.dart';

@freezed
class QuizState with _$QuizState {
  const factory QuizState.loading() = _QuiezStateLoading;
  const factory QuizState.common(QuizDto quiz) = _QuiezStateCommon;
  const factory QuizState.onCorrectAnswer(String imgUrl) = _QuiezStateOnCorrectAnswer;
  const factory QuizState.onIncorrectAnswer(String imgUrl) = _QuiezStateOnIncorrectAnswer;
  const factory QuizState.onError(String errorMessage) = _QuiezStateOnError;
}