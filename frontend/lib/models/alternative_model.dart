import 'dart:convert';

class AlternativeModel {
  String id;
  String title;
  double score;
  String questionId;

  AlternativeModel({required this.id, required this.title, required this.score, required this.questionId});

  factory AlternativeModel.fromJson(String str) => AlternativeModel.fromMap(json.decode(str));

  factory AlternativeModel.fromMap(Map<String, dynamic> json) {
    return AlternativeModel(
      id: json['id'] ?? 'error',
      title: json["title"] ?? 'error',
      score: json["score"],
      questionId: json["questionId"] ?? 'error',
    );
  }

}