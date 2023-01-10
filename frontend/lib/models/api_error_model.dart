import 'dart:convert';

import 'package:dio/dio.dart';

class ApiErrorModel {
  final Response<dynamic>? message;

  const ApiErrorModel({
    this.message,
  });

  factory ApiErrorModel.fromJson(String str) =>
      ApiErrorModel.fromMap(json.decode(str));

  factory ApiErrorModel.fromMap(Map<String, dynamic> json) {
    return ApiErrorModel(
      message: json['message'] ?? 'ERROR NÃO INDENTIFICADO',
    );
  }
}
