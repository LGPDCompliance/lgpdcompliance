import 'package:dio/dio.dart';
import 'package:lgpb_compliance/core/api.dart';
import 'package:lgpb_compliance/models/graphs_model.dart';
import 'package:lgpb_compliance/models/historic_model.dart';
import 'package:lgpb_compliance/models/user_model.dart';

class AdminRepository {
  late final Dio _dio;

  Future<List<UserModel>> getUsers({required String kTokenUser}) async {
    try {
      _dio = Dio(optionsRequest(kTokenUser));
      final response = await _dio.get('/users');
      return List<UserModel>.from(
          response.data.map((x) => UserModel.fromMap(x)));
    } on DioError catch (e) {
      print("AdminRepository.getUsers ERROR: $e}");
      return Future.error(e);
    }
  }

  Future<UserModel> getUserByID({required String kTokenUser, required String userId}) async {
    try {
      _dio = Dio(optionsRequest(kTokenUser));
      final response = await _dio.get('/user/$userId');
      return UserModel.fromMap(response.data);
    } on DioError catch (e) {
      print("AdminRepository.getUserByID ERROR: $e}");
      return Future.error(e);
    }
  }

  Future<List<HistoricModel>> getHistoricCompliance({required String kTokenUser, required String userId}) async {
    try {
      _dio = Dio(optionsRequest(kTokenUser));
      final response = await _dio.get('/quiz/answers/$userId');
      return List<HistoricModel>.from(
          response.data.map((x) => HistoricModel.fromMap(x)));
    } on DioError catch (e) {
      print("AdminRepository.getHistoricCompliance ERROR: $e}");
      return Future.error(e);
    }
  }

  Future<GraphicsModel> getInfoGraphic({required String kTokenUser}) async {
    try {
      _dio = Dio(optionsRequest(kTokenUser));
      final response = await _dio.get('/graphics/quiz');
      return GraphicsModel.fromMap(response.data);
    } on DioError catch (e) {
      print("AdminRepository.getInfoGraphic ERROR: $e}");
      return Future.error(e);
    }
  }

}
