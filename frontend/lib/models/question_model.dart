import 'dart:convert';

import 'package:lgpb_compliance/models/alternative_model.dart';

class QuestionModel {
  String id;
  String title;
  String type;
  String quizId;
  String answer;
  String feedback;
  List<AlternativeModel> alternatives;

  QuestionModel({
    required this.id,
    required this.title,
    required this.type,
    required this.quizId,
    required this.answer,
    required this.feedback,
    required this.alternatives,
  });

  factory QuestionModel.fromJson(String str) =>
      QuestionModel.fromMap(json.decode(str));

  factory QuestionModel.fromMap(Map<String, dynamic> json) {
    return QuestionModel(
      id: json['id'],
      title: json["title"],
      type: json["type"] ?? 'null',
      quizId: json["quizId"],
      answer: json["answer"] ?? '',
      feedback: json["feedback"] ?? '',
      alternatives: List<AlternativeModel>.from(
          json["alternatives"].map((x) => AlternativeModel.fromMap(x))),
    );
  }
}
