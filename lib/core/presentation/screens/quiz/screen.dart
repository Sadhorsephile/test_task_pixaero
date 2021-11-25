import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/models/quiz.dart';
import 'bloc/bloc.dart';
import 'bloc/state.dart';

part 'components/answer_card.dart';
part 'components/submit_button.dart';

const _horizontalPadding = 20.0;
const _verticalPadding = 20.0;
const _verticalSpacing = 20.0;
const _borderRadius = 10.0;

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Theme.of(context).colorScheme.surface,
        elevation: 0.5,
      ),
      body: BlocBuilder<QuizBloc, QuizState>(
        builder: (context, state) => state.when(
          loading: () => const _LoadingBody(),
          common: (quiz) => _CommonBody(quiz: quiz),
          onCorrectAnswer: (imgUrl) => _AfterAnswerBody(imgUrl: imgUrl),
          onIncorrectAnswer: (imgUrl) => _AfterAnswerBody(imgUrl: imgUrl),
          onError: (error) => _ErrorBody(message: error),
        ),
      ),
    );
  }
}

class _LoadingBody extends StatelessWidget {
  const _LoadingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class _CommonBody extends StatelessWidget {
  final QuizDto quiz;

  const _CommonBody({Key? key, required this.quiz}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: context.read<QuizBloc>().requestNewQuestion,
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: _horizontalPadding,
                vertical: _verticalPadding,
              ),
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(
                    parent: BouncingScrollPhysics()),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Вопрос:',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    const SizedBox(height: _verticalSpacing),
                    Text(
                      quiz.question,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: _verticalSpacing),
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(_borderRadius * 2),
                topRight: Radius.circular(_borderRadius * 2),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: const Offset(0, -1),
                  blurRadius: 7.5,
                )
              ],
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: _horizontalPadding,
              vertical: _verticalPadding,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: quiz.answers
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: _AnswerCard(
                        content: e,
                        onPressed: () =>
                            context.read<QuizBloc>().submitAnswer(e),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class _AfterAnswerBody extends StatelessWidget {
  final String imgUrl;

  const _AfterAnswerBody({Key? key, required this.imgUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: _horizontalPadding,
              vertical: _verticalPadding,
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  imgUrl,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, event) {
                    return event == null
                        ? child
                        : Container(
                            color: Colors.grey[200],
                            child: const Center(
                                child: CircularProgressIndicator()),
                          );
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: _verticalSpacing),
          _SubmitButton(
            text: 'Попробовать снова',
            onPressed: context.read<QuizBloc>().requestNewQuestion,
          ),
        ],
      ),
    );
  }
}

class _ErrorBody extends StatelessWidget {
  final String message;

  const _ErrorBody({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '🤡',
            style: TextStyle(fontSize: 150),
          ),
          const SizedBox(height: _verticalSpacing),
          Text(
            'Произошла ошибка:\n$message',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18),
          ),
          const SizedBox(height: _verticalSpacing),
          _SubmitButton(
            text: 'Попробовать снова',
            onPressed: context.read<QuizBloc>().requestNewQuestion,
          ),
        ],
      ),
    );
  }
}
