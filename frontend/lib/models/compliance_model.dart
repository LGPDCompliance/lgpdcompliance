import 'dart:convert';

import 'package:lgpb_compliance/models/section_model.dart';

class ComplianceModel {
  final String id;
  final List<SectionModel> sections;

  ComplianceModel({required this.id, required this.sections});

  factory ComplianceModel.fromJson(String str) =>
      ComplianceModel.fromMap(json.decode(str));

  factory ComplianceModel.fromMap(Map<String, dynamic> json) {
    return ComplianceModel(
      id: json['id'],
      sections: List<SectionModel>.from(
          json["sections"].map((x) => SectionModel.fromMap(x))),
    );
  }

  @override
  String toString() {
    return 'ComplianceModel{sections: $sections}';
  }
}
