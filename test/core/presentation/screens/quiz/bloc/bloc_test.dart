import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test_task_pixaero/core/data/repository/quiz.dart';
import 'package:test_task_pixaero/core/domain/models/quiz.dart';
import 'package:test_task_pixaero/core/presentation/screens/quiz/bloc/bloc.dart';
import 'package:test_task_pixaero/core/presentation/screens/quiz/bloc/state.dart';

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
        (_) => Future(
          () async {
            await Future.delayed(const Duration(seconds: 1));
            return QuizLoadingResultDto.success(mockQuiz);
          },
        ),
      );
      when(() => mockRepo.imageOnPositiveResult).thenAnswer((_) =>
          Future(() => const QuizLoadingImageResultDto.success(positiveImage)));
      when(() => mockRepo.imageOnNegativeResult).thenAnswer((_) =>
          Future(() => const QuizLoadingImageResultDto.success(negativeImage)));
    });
    test('Test initial states', () {
      final bloc = buildBloc();

      /// Check initial state
      expect(bloc.state, const QuizState.loading());

      /// Check state after loading
      expectLater(bloc.stream, emits(QuizState.common(mockQuiz)));
    });

    test('Correct answer', () async {
      /// Init bloc
      final bloc = buildBloc();

      /// Load first question
      await bloc.requestNewQuestion();

      /// Queue of expected states
      final matchers = [
        const QuizState.loading(),
        const QuizState.onCorrectAnswer(positiveImage),
      ];

      /// Take first two states to compare them with expected one by one
      final list = bloc.stream.take(matchers.length).toList();

      /// Submit correct answer
      bloc.submitAnswer(correctAnswer);

      var i = 0;
      Future.forEach<QuizState>(await list, (e) => expect(e, matchers[i++]));
    });

    test('Incorrect answer', () async {
      final bloc = buildBloc();
      await bloc.requestNewQuestion();

      final matchers = [
        const QuizState.loading(),
        const QuizState.onIncorrectAnswer(negativeImage),
      ];

      final list = bloc.stream.take(matchers.length).toList();

      bloc.submitAnswer(incorrectAnswer);

      var i = 0;
      Future.forEach<QuizState>(await list, (e) => expect(e, matchers[i++]));
    });
  });

  group('Init bloc error:', () {
    setUp(() {
      when(() => mockRepo.oneRandomQuestion).thenAnswer(
        (_) => Future(
          () async {
            await Future.delayed(const Duration(seconds: 1));
            return const QuizLoadingResultDto.failure(networkError);
          },
        ),
      );
      when(() => mockRepo.imageOnPositiveResult).thenAnswer((_) =>
          Future(() => const QuizLoadingImageResultDto.failure(networkError)));
      when(() => mockRepo.imageOnNegativeResult).thenAnswer((_) =>
          Future(() => const QuizLoadingImageResultDto.failure(networkError)));
    });

    test('Test initial states on failure', () {
      final bloc = buildBloc();
      expect(bloc.state, const QuizState.loading());
      expectLater(bloc.stream, emits(const QuizState.onError(networkError)));
    });
  });

  group('Negative tests:', () {
    setUp(() {
      when(() => mockRepo.oneRandomQuestion).thenAnswer(
        (_) => Future(
          () async {
            await Future.delayed(const Duration(seconds: 1));
            return QuizLoadingResultDto.success(mockQuiz);
          },
        ),
      );
    });

    test('Correct answer on failure', () async {
      final bloc = buildBloc();
      await bloc.requestNewQuestion();

      final matchers = [
        const QuizState.loading(),
        const QuizState.onError(networkError),
      ];

      final list = bloc.stream.take(matchers.length).toList();

      bloc.submitAnswer(correctAnswer);

      var i = 0;
      Future.forEach<QuizState>(await list, (e) => expect(e, matchers[i++]));
    });

    test('Incorrect answer', () async {
      final bloc = buildBloc();
      await bloc.requestNewQuestion();

      final matchers = [
        const QuizState.loading(),
        const QuizState.onError(networkError),
      ];

      final list = bloc.stream.take(matchers.length).toList();

      bloc.submitAnswer(incorrectAnswer);

      var i = 0;
      Future.forEach<QuizState>(await list, (e) => expect(e, matchers[i++]));
    });
  });
}
