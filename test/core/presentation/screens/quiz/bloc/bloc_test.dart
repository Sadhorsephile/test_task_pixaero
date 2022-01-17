import 'package:flutter_bloc/flutter_bloc.dart';
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
          (_) => Future.value(QuizLoadingResultDto.success(mockQuiz)));
      when(() => mockRepo.imageOnPositiveResult).thenAnswer((_) =>
          Future(() => const QuizLoadingImageResultDto.success(positiveImage)));
      when(() => mockRepo.imageOnNegativeResult).thenAnswer((_) =>
          Future(() => const QuizLoadingImageResultDto.success(negativeImage)));
    });

    customBlocTest(
      'Test initial state',
      buildBloc: buildBloc,
      expectedInitialState: const QuizState.loading(),
      matchers: [QuizState.common(mockQuiz)],
    );

    customBlocTest<QuizBloc, QuizState>(
      'Correct answer',
      buildBloc: buildBloc,
      performInit: (bloc) => bloc.requestNewQuestion(),
      act: (bloc) async => bloc.submitAnswer(correctAnswer),
      matchers: [
        const QuizState.loading(),
        const QuizState.onCorrectAnswer(positiveImage),
      ],
    );

    customBlocTest<QuizBloc, QuizState>(
      'Incorrect answer!!!',
      buildBloc: buildBloc,
      performInit: (bloc) => bloc.requestNewQuestion(),
      act: (bloc) async => bloc.submitAnswer(incorrectAnswer),
      comparator: (actual, expected) {
        return actual == expected;
      },
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

    customBlocTest(
      'Test initial states on failure',
      buildBloc: buildBloc,
      expectedInitialState: const QuizState.loading(),
      matchers: [const QuizState.onError(networkError)],
    );
  });

  group('Negative tests:', () {
    setUp(() {
      when(() => mockRepo.oneRandomQuestion).thenAnswer(
          (_) => Future.value(QuizLoadingResultDto.success(mockQuiz)));
    });

    customBlocTest<QuizBloc, QuizState>(
      'Correct answer on failure',
      buildBloc: buildBloc,
      performInit: (bloc) => bloc.requestNewQuestion(),
      act: (bloc) async => bloc.submitAnswer(correctAnswer),
      matchers: [
        const QuizState.loading(),
        const QuizState.onError(networkError),
      ],
    );

    customBlocTest<QuizBloc, QuizState>(
      'Incorrect answer on failure',
      buildBloc: buildBloc,
      performInit: (bloc) => bloc.requestNewQuestion(),
      act: (bloc) async => bloc.submitAnswer(incorrectAnswer),
      matchers: [
        const QuizState.loading(),
        const QuizState.onError(networkError),
      ],
    );
  });
}

void customBlocTest<B extends BlocBase<S>, S>(
  String descr, {

  /// Callback on bloc building
  required B Function() buildBloc,

  /// First state of bloc by default
  S? expectedInitialState,

  /// Callback on init events of bloc, if neccessary.
  Future<void> Function(B)? performInit,

  /// Queue of states, which must to be emitted in order
  List<S>? matchers,

  /// Callback on actions which must lead to state changes
  Future<void> Function(B)? act,

  /// Comparator to custom comparing of actual and expected states
  bool Function(S, S)? comparator,
}) {
  test(descr, () async {
    void _comparator(S s1, S s2) {
      if (comparator != null) {
        expect(comparator(s1, s2), true);
      }
      return expect(s1, s2);
    }

    final bloc = buildBloc();

    if (expectedInitialState != null) {
      expect(bloc.state, expectedInitialState);
    }

    if (performInit != null) {
      await performInit(bloc);
    }

    if (matchers != null) {
      final list = bloc.stream
          .take(matchers.length)
          .map((e) => (S state) => _comparator(state, e))
          .toList();

      if (act != null) {
        await act(bloc);
      }

      var i = 0;
      Future.forEach<Function(S)>(await list, (e) => e(matchers[i++]));
    }
  });
}
