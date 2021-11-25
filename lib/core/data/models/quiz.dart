class QuizNetworkDto {
  final String question;
  final List<String> answers;
  /// Id of correct answer
  final int id;

  QuizNetworkDto({
    required this.question,
    required this.answers,
    required this.id,
  }) : assert(answers.isNotEmpty, 'Answers cannot be empty');
}

extension QuizSerializer on Map<String, dynamic> {
  QuizNetworkDto get convertToQuizNetworkDto {
    return QuizNetworkDto(
      question: this['question'],
      answers: this['answers'],
      id: this['id'],
    );
  }
}
