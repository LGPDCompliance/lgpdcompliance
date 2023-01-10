import 'dart:convert';

import 'package:lgpb_compliance/models/section_feedback_model.dart';

class FeedbackModel {
  final String sectionTitle;
  final List<SectionFeedbackModel> sectionFeedbacks;

  FeedbackModel({
    required this.sectionTitle,
    required this.sectionFeedbacks,
  });

  factory FeedbackModel.fromJson(String str) =>
      FeedbackModel.fromMap(json.decode(str));

  factory FeedbackModel.fromMap(Map<String, dynamic> json) {
    return FeedbackModel(
      sectionTitle: json['sectionTitle'],
      sectionFeedbacks: json["sectionFeedbacks"] == null
          ? []
          : List<SectionFeedbackModel>.from(json["sectionFeedbacks"]
              .map((x) => SectionFeedbackModel.fromMap(x))),
    );
  }
}
