import 'dart:convert';

class AnswersForm {
  final String userId;
  final List<Answer> answers;

  AnswersForm({
    required this.userId,
    required this.answers,
  });

  String toJson() => jsonEncode({
    'userId': userId,
    'answers': answers,
  });

  @override
  String toString() {
    return 'AnswersForm{userId: $userId, answers: $answers}';
  }
}


class Answer {
  String questionId;
  String alternativeId;
  double score;

  Answer({
    required this.questionId,
    required this.alternativeId,
    required this.score,
  });

  Map<String, dynamic> toJson() => {
    'questionId': questionId,
    'alternativeId': alternativeId,
    'score': score,
  };

  @override
  String toString() {
    return 'Answer{questionId: $questionId, alternativeId: $alternativeId}';
  }
}