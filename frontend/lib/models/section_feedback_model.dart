import 'dart:convert';

class SectionFeedbackModel {
  final String id;
  final String description;
  final String alternativeId;

  SectionFeedbackModel(
      {required this.id,
      required this.description,
      required this.alternativeId});

  factory SectionFeedbackModel.fromJson(String str) =>
      SectionFeedbackModel.fromMap(json.decode(str));

  factory SectionFeedbackModel.fromMap(Map<String, dynamic> json) {
    return SectionFeedbackModel(
      id: json['id'],
      description: json['description'],
      alternativeId: json['alternativeId'],
    );
  }
}
