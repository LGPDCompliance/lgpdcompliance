import 'dart:convert';

import 'package:lgpb_compliance/models/feedback_model.dart';

class HistoricModel {
  final String id;
  final String quizId;
  final String userId;
  final String adequacy;
  final double score;
  final DateTime createdAt;
  final List<FeedbackModel>? feedback;

  HistoricModel({
    required this.id,
    required this.quizId,
    required this.userId,
    required this.adequacy,
    required this.score,
    required this.createdAt,
    required this.feedback,
  });

  factory HistoricModel.fromJson(String str) =>
      HistoricModel.fromMap(json.decode(str));

  factory HistoricModel.fromMap(Map<String, dynamic> json) {
    return HistoricModel(
      id: json['id'],
      quizId: json['quizId'],
      userId: json['userId'],
      adequacy: json['adequance'],
      score: json['score'],
      createdAt: DateTime.parse(json['createdAt']),
      feedback: json["feedbacks"] == null
          ? null
          : List<FeedbackModel>.from(
              json["feedbacks"].map((x) => FeedbackModel.fromMap(x))),
    );
  }
}
