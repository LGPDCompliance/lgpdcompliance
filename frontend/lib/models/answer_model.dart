import 'dart:convert';

import 'package:lgpb_compliance/models/question_model.dart';

class AnswerModel {
  String id;
  List<QuestionModel> questions;

  AnswerModel({required this.id, required this.questions});

  factory AnswerModel.fromJson(String str) =>
      AnswerModel.fromMap(json.decode(str));

  factory AnswerModel.fromMap(Map<String, dynamic> json) {
    return AnswerModel(
      id: json['id'],
      questions: List<QuestionModel>.from(
          json["questions"].map((x) => QuestionModel.fromMap(x))),
    );
  }
}