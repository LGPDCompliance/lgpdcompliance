import 'dart:convert';

import 'package:lgpb_compliance/models/question_model.dart';

class SectionModel {
  final int id;
  final String title;
  final List<QuestionModel> questions;

  SectionModel(
      {required this.title, required this.id, required this.questions});

  factory SectionModel.fromJson(String str) =>
      SectionModel.fromMap(json.decode(str));

  factory SectionModel.fromMap(Map<String, dynamic> json) {
    return SectionModel(
      id: json['id'],
      title: json['title'],
      questions: List<QuestionModel>.from(
          json["questions"].map((x) => QuestionModel.fromMap(x))),
    );
  }

  @override
  String toString() {
    return 'SectionModel{title: $title, questions: $questions}';
  }
}
