import 'package:dio/dio.dart';
import 'package:lgpb_compliance/core/api.dart';
import 'package:lgpb_compliance/models/answer_model.dart';
import 'package:lgpb_compliance/models/answers_form.dart';
import 'package:lgpb_compliance/models/compliance_model.dart';
import 'package:lgpb_compliance/models/historic_model.dart';

class ComplianceRepository {
  late final Dio _dio;

  Future<ComplianceModel> getCompliance(String kTokenUser) async {
    try {
      _dio = Dio(optionsRequest(kTokenUser));
      final response = await _dio.get('/quiz');
      return ComplianceModel.fromMap(response.data);
    } on DioError catch (e) {
      print("ComplianceRepository  ERROR: $e}");
      return Future.error(e);
    }
  }

  Future<HistoricModel> submitQuizCompliance({
    required String kTokenUser,
    required String quizId,
    required AnswersForm answersForm,
  }) async {
    try {
      _dio = Dio(optionsRequest(kTokenUser));
      final response = await _dio.post(
        '/quiz/answers/$quizId',
        data: answersForm.toJson(),
      );
      return HistoricModel.fromMap(response.data);
    } on DioError catch (e) {
      return Future.error(e);
    }
  }

  Future<AnswerModel> getQuizAnswer({
    required String kTokenUser,
    required String quizAnswerId,
  }) async {
    try {
      _dio = Dio(optionsRequest(kTokenUser));
      final response = await _dio.get('/quiz/answer/$quizAnswerId');
      return AnswerModel.fromMap(response.data);
    } on DioError catch (e) {
      print("ComplianceRepository.getQuizAnswerId ERROR: $e}");
      return Future.error(e);
    }
  }
}
