import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test_task_pixaero/core/data/repository/quiz.dart';
import 'package:test_task_pixaero/core/domain/models/quiz.dart';
import 'package:test_task_pixaero/core/presentation/screens/quiz/bloc/bloc.dart';
import 'package:test_task_pixaero/core/presentation/screens/quiz/bloc/state.dart';

import '../../../../../test_util.dart';

class MockQuizRepository extends Mock implements QuizRepository {}

const question = 'Yes or no?';
const correctAnswer = 'Yes';
const incorrectAnswer = 'No';
const positiveImage = 'positive';
const negativeImage = 'negative';
const networkError = 'Connection error';

final mockQuiz = QuizDto(
  question: question,
  answers: [correctAnswer, incorrectAnswer],
  correctAnswer: correctAnswer,
);

void main() {
  final mockRepo = MockQuizRepository();
  buildBloc() => QuizBloc(mockRepo);

  group('Positive tests:', () {
    setUp(() {
      when(() => mockRepo.oneRandomQuestion).thenAnswer(
          (_) => Future.value(QuizLoadingResultDto.success(mockQuiz)));
      when(() => mockRepo.imageOnPositiveResult).thenAnswer((_) =>
          Future(() => const QuizLoadingImageResultDto.success(positiveImage)));
      when(() => mockRepo.imageOnNegativeResult).thenAnswer((_) =>
          Future(() => const QuizLoadingImageResultDto.success(negativeImage)));
    });

    testBloc<QuizBloc, QuizState>(
      'Test initial state',
      build: buildBloc,
      expectedInitialState: const QuizState.loading(),
      matchers: [QuizState.common(mockQuiz)],
    );

    testBloc<QuizBloc, QuizState>(
      'Correct answer',
      build: buildBloc,
      performInit: (bloc) => bloc.requestNewQuestion(),
      act: (bloc) async => bloc.submitAnswer(correctAnswer),
      matchers: [
        const QuizState.loading(),
        const QuizState.onCorrectAnswer(positiveImage),
      ],
    );

    testBloc<QuizBloc, QuizState>(
      'Incorrect answer',
      build: buildBloc,
      performInit: (bloc) => bloc.requestNewQuestion(),
      act: (bloc) async => bloc.submitAnswer(incorrectAnswer),
      matchers: [
        const QuizState.loading(),
        const QuizState.onIncorrectAnswer(negativeImage),
      ],
    );
  });

  group('Init bloc error:', () {
    setUp(() {
      when(() => mockRepo.oneRandomQuestion).thenAnswer(
        (_) => Future.value(const QuizLoadingResultDto.failure(networkError)),
      );
      when(() => mockRepo.imageOnPositiveResult).thenAnswer((_) =>
          Future(() => const QuizLoadingImageResultDto.failure(networkError)));
      when(() => mockRepo.imageOnNegativeResult).thenAnswer((_) =>
          Future(() => const QuizLoadingImageResultDto.failure(networkError)));
    });

    testBloc<QuizBloc, QuizState>(
      'Test initial states on failure',
      build: buildBloc,
      expectedInitialState: const QuizState.loading(),
      matchers: [const QuizState.onError(networkError)],
    );
  });

  group('Negative tests:', () {
    setUp(() {
      when(() => mockRepo.oneRandomQuestion).thenAnswer(
          (_) => Future.value(QuizLoadingResultDto.success(mockQuiz)));
    });

    testBloc<QuizBloc, QuizState>(
      'Correct answer on failure',
      build: buildBloc,
      performInit: (bloc) => bloc.requestNewQuestion(),
      act: (bloc) async => bloc.submitAnswer(correctAnswer),
      matchers: [
        const QuizState.loading(),
        const QuizState.onError(networkError),
      ],
    );

    testBloc<QuizBloc, QuizState>(
      'Incorrect answer on failure',
      build: buildBloc,
      performInit: (bloc) => bloc.requestNewQuestion(),
      act: (bloc) async => bloc.submitAnswer(incorrectAnswer),
      matchers: [
        const QuizState.loading(),
        const QuizState.onError(networkError),
      ],
    );
  });
}

