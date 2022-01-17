import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'data/network/api/get_gif.dart';
import 'data/network/api/get_quiz.dart';
import 'data/repository/quiz.dart';
import 'presentation/screens/quiz/bloc/bloc.dart';

import 'presentation/screens/quiz/screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: BlocProvider<QuizBloc>(
        create: (_) => QuizBloc(
          QuizRepositoryImpl(
            GetQuizApiImpl(),
            GetGifByAnswerApiImpl(),
          ),
        ),
        child: const MyHomePage(title: 'Test app'),
      ),
    );
  }
}
