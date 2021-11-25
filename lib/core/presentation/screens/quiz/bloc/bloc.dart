import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../domain/models/quiz.dart';

import '../../../../data/repository/quiz.dart';

import 'state.dart';

class QuizBloc extends Cubit<QuizState> {
  final QuizRepository _quizRepository;

  late QuizDto _quiz;

  QuizBloc(this._quizRepository) : super(const QuizState.loading()) {
    requestNewQuestion();
  }

  Future<void> requestNewQuestion() async {
    emit(const QuizState.loading());
    
    (await _quizRepository.oneRandomQuestion).when(
      success: (quiz) {
        _quiz = quiz;
        emit(QuizState.common(quiz));
      },
      failure: _onError,
    );
  }

  void submitAnswer(String answer) async {
    emit(const QuizState.loading());

    final isCorrectAnswer = _quiz.correctAnswer == answer;

    if (isCorrectAnswer) {
      (await _quizRepository.imageOnPositiveResult).when(
        success: (imgUrl) {
          emit(QuizState.onCorrectAnswer(imgUrl));
        },
        failure: _onError,
      );
    } else {
      (await _quizRepository.imageOnNegativeResult).when(
        success: (imgUrl) {
          emit(QuizState.onIncorrectAnswer(imgUrl));
        },
        failure: _onError,
      );
    }
  }

  void _onError(String error) {
    emit(QuizState.onError(error));
  }
}
